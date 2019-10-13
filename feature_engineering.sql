select

    act.time_key,
    act.bu_code||act.pers_code_advisor||act.prod_group_l4||act.prod_group_l5        as ITEM_ID,
    trunc(act.time_key) - min(act.time_key) over()                                  as DATE_ID,
    act.bu_code                                                                     as STORE_ID,
    to_number(to_char(act.time_key, 'D'))-1                                         as CAT_DAYOFWEEK,
    case when cal.time_key is not null then 1 else 0 end                            as DUM_HOLIDAY,
    0                                                                               as DUM_FREEWEEKDAY,
    0                                                                               as DUM_WORKSATURDAY,
    0                                                                               as DUM_HOLIDAY_SNGL,
    case when lower(cal.official_holiday) like lower('%pfing%') then 1 else 0 end   as DUM_HOLIDAY_WHIT,
    case when lower(cal.official_holiday) like lower('%weih%') then 1 else 0 end    as DUM_HOLIDAY_XMAS,
    0                                                                               as DUM_SPRINGBREAK,
    0                                                                               as DUM_SUMMERBREAK,
    0                                                                               as DUM_FALLBREAK,
    0                                                                               as DUM_WINTERBREAK,
    case
        when cal.time_key is null
        and  to_number(to_char(act.time_key, 'D')) < 6
        then 1 else 0
    end                                                                             as DUM_WORKDAY,

    count(distinct (case
            when cal.time_key is null
            and  to_number(to_char(act.time_key, 'D')) < 6
            then act.time_key else null
        end)) over (partition by trunc(act.time_key,'W'))                            as NUM_WORKDAYS_THISWEEK







-- act.*

from edwh.dm_action_25m act

left join edwh.business_calendar cal
on act.time_key = cal.time_key
and cal.official_holiday != '-'



where act.bu_code in ('710', '100')
and act.duration > 0

-- and trunc(act.time_key,'mm') = trunc(sysdate,'mm') -- testing
and trunc(act.time_key) >= trunc(sysdate)-14 -- testing
order by act.time_key asc
;




-- select * from edhw.SCHOOL_HOLIDAYS;
select
    --
    time_key,
    -- time_key - min(time_key) over()
    case
        when official_holiday = '-'
        and  to_number(to_char(time_key, 'D')) < 6
        then 1 else 0
    end  as DUM_WORKDAY,

    sum(case
            when official_holiday = '-'
            and  to_number(to_char(time_key, 'D')) < 6
            then 1 else 0
        end) over (partition by trunc(time_key,'w'))
from edwh.business_calendar
-- where lower(official_holiday) like lower('%weih%')

where trunc(time_key,'mm') = trunc(sysdate,'mm')
-- and official_holiday != '-'
;
