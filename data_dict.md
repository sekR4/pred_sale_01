


<!-- equivalent Variable Description -->
ITEM_ID Unique identifier of item
DATE_ID Unique identifier of date; subsequent DATE_IDs correspond to subsequent days
STORE_ID Unique identifier of stores
CAT_DAYOFWEEK Weekday type (0 = Monday, 1 = Tuesday, …, 6 = Sunday)
DUM_HOLIDAY 1 if day a is holiday
<!-- ? DUM_FREEWEEKDAY 1 if day is a free weekday
? DUM_WORKSATURDAY 1 if day is a work Saturday
? DUM_HOLIDAY_SNGL 1 if day is a single holiday -->
DUM_HOLIDAY_WHIT 1 if day is Whit-holiday
DUM_HOLIDAY_XMAS 1 if day is a Christmas holiday
<!-- DUM_SPRINGBREAK 1 if day is during the spring school-holiday
DUM_SUMMERBREAK 1 if day is during the summer school-holiday
DUM_FALLBREAK 1 if day is during the fall school-holiday
DUM_WINTERBREAK 1 if day is during the winter school-holiday -->
DUM_WORKDAY 1 if day is a workday
NUM_WORKDAYS_THISWEEK Number of workdays in week
NUM_WORKDAYS_PASTWEEK Number of workdays in last week
NUM_WORKDAYS_NEXTWEEK Number of workdays in next week
NUM_WORKDAYS_PAST7DAY Number of workdays in last seven days
NUM_WORKDAYS_FRWD7DAY Number of workdays in next seven days
NUM_HOLIDAY_FROM Number of days since last holiday
NUM_HOLIDAY_TO Number of days until next holiday
NUM_HOLIDAY_SNGL_FROM Number of days since the last single-day holiday
NUM_HOLIDAY_SNGL_TO Number of days to the next single-day holiday
NUM_HOLIDAY_WHIT_FROM Number of days since the previous Whit
NUM_HOLIDAY_WHIT_TO Number of days to the nextWhit
NUM_HOLIDAY_XMAS_FROM Number of days since last Christmas holiday
NUM_HOLIDAY_XMAS_TO Number of days until next Christmas holiday
NUM_SCHOOLBREAK_FROM_END Number of days since the end of the last school holiday
NUM_SCHOOLBREAK_TO_START Number of days to the next school holiday
NUM_SCHOOLBREAK_FROM_STARTNumber of days since the start of the last school holiday
NUM_SCHOOLBREAK_TO_END Number of days to the end of next school holiday
QTY Quantity sold per day per item per store - target variable
PRICE Price of items sold per unit on a given day in a given store
CUSTOMER Number of customers per day per store
