-- Full US

select schools."LEA_NAME", 
schools."LEA_STATE_NAME",
schools."YEAR",
schools."LEAID",
count(distinct "COMBOKEY") as school_count,
SUM("SCH_FTESERVICES_PSY" + "SCH_FTESERVICES_SOC") as socioemotional_staff,
SUM("SCH_FTESECURITY_LEO" + "SCH_FTESECURITY_GUA") as law_enforcement_presence,

-- Total enrollment by race
SUM("SCH_ENR_WH_M" + "SCH_ENR_WH_F") as white_enrollment,
SUM("SCH_ENR_BL_M" + "SCH_ENR_BL_F") as black_enrollment,
SUM("SCH_ENR_HI_M" + "SCH_ENR_HI_F") as hispanic_enrollment,
SUM("SCH_ENR_AS_M" + "SCH_ENR_AS_F") as asian_enrollment,
SUM("SCH_ENR_AM_M" + "SCH_ENR_AM_F") as native_american_enrollment,
SUM("SCH_ENR_HP_M" + "SCH_ENR_HP_F") as hawaiian_pacific_islander_enrollment,
SUM("SCH_ENR_TR_M" + "SCH_ENR_TR_F") as two_or_more_races_enrollment,

-- Total GT enrollment by race
SUM("SCH_GTENR_WH_M" + "SCH_GTENR_WH_F") as white_GT_enrollment,
SUM("SCH_GTENR_BL_M" + "SCH_GTENR_BL_F") as black_GT_enrollment,
SUM("SCH_GTENR_HI_M" + "SCH_GTENR_HI_F") as hispanic_GT_enrollment,
SUM("SCH_GTENR_AS_M" + "SCH_GTENR_AS_F") as asian_GT_enrollment,
SUM("SCH_GTENR_AM_M" + "SCH_GTENR_AM_F") as native_american_GT_enrollment,
SUM("SCH_GTENR_HP_M" + "SCH_GTENR_HP_F") as hawaiian_pacific_islander_GT_enrollment,
SUM("SCH_GTENR_TR_M" + "SCH_GTENR_TR_F") as two_or_more_races_GT_enrollment,

-- Total AP enrollment by race
SUM("SCH_APENR_WH_M" + "SCH_APENR_WH_F") as white_AP_enrollment,
SUM("SCH_APENR_BL_M" + "SCH_APENR_BL_F") as black_AP_enrollment,
SUM("SCH_APENR_HI_M" + "SCH_APENR_HI_F") as hispanic_AP_enrollment,
SUM("SCH_APENR_AS_M" + "SCH_APENR_AS_F") as asian_AP_enrollment,
SUM("SCH_APENR_AM_M" + "SCH_APENR_AM_F") as native_american_AP_enrollment,
SUM("SCH_APENR_HP_M" + "SCH_APENR_HP_F") as hawaiian_pacific_islander_AP_enrollment,
SUM("SCH_APENR_TR_M" + "SCH_APENR_TR_F") as two_or_more_races_AP_enrollment

-- Suspensions by race
, SUM("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F") as white_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_M" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_F") as black_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_M" + "SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_SINGOOS_HI_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_F") as hispanic_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_M" + "SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_SINGOOS_AS_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_F") as asian_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_M" + "SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_SINGOOS_AM_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_F") as native_american_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_M" + "SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_SINGOOS_HP_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_F") as hawaiian_pacific_islander_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_M" + "SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_SINGOOS_TR_F" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_M" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_F") as two_or_more_races_oos_suspensions 


-- Law enforcement interactions by race
, SUM("SCH_DISCWODIS_REF_WH_M" + "SCH_DISCWODIS_REF_WH_M" + "SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M" + "SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M" + "SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWODIS_ARR_WH_M" + "SCH_DISCWODIS_ARR_WH_M" + "SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M" + "SCH_DISCWDIS_ARR_IDEA_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M" + "SCH_DISCWDIS_ARR_IDEA_WH_F") as white_le_referrals_arrests 
, SUM("SCH_DISCWODIS_REF_BL_M" + "SCH_DISCWODIS_REF_BL_M" + "SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M" + "SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M" + "SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWODIS_ARR_BL_M" + "SCH_DISCWODIS_ARR_BL_M" + "SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M" + "SCH_DISCWDIS_ARR_IDEA_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M" + "SCH_DISCWDIS_ARR_IDEA_BL_F") as black_le_referrals_arrests 
, SUM("SCH_DISCWODIS_REF_HI_M" + "SCH_DISCWODIS_REF_HI_M" + "SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M" + "SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M" + "SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWODIS_ARR_HI_M" + "SCH_DISCWODIS_ARR_HI_M" + "SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M" + "SCH_DISCWDIS_ARR_IDEA_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M" + "SCH_DISCWDIS_ARR_IDEA_HI_F") as hispanic_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_AS_M" + "SCH_DISCWODIS_REF_AS_M" + "SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M" + "SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M" + "SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWODIS_ARR_AS_M" + "SCH_DISCWODIS_ARR_AS_M" + "SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M" + "SCH_DISCWDIS_ARR_IDEA_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M" + "SCH_DISCWDIS_ARR_IDEA_AS_F") as asian_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_AM_M" + "SCH_DISCWODIS_REF_AM_M" + "SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M" + "SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M" + "SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWODIS_ARR_AM_M" + "SCH_DISCWODIS_ARR_AM_M" + "SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M" + "SCH_DISCWDIS_ARR_IDEA_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M" + "SCH_DISCWDIS_ARR_IDEA_AM_F") as native_american_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_HP_M" + "SCH_DISCWODIS_REF_HP_M" + "SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M" + "SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M" + "SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWODIS_ARR_HP_M" + "SCH_DISCWODIS_ARR_HP_M" + "SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M" + "SCH_DISCWDIS_ARR_IDEA_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M" + "SCH_DISCWDIS_ARR_IDEA_HP_F") as hawaiian_pacific_islander_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_TR_M" + "SCH_DISCWODIS_REF_TR_M" + "SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M" + "SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M" + "SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWODIS_ARR_TR_M" + "SCH_DISCWODIS_ARR_TR_M" + "SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M" + "SCH_DISCWDIS_ARR_IDEA_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M" + "SCH_DISCWDIS_ARR_IDEA_TR_F") as two_or_more_races_le_referrals_arrests


from schools inner join classified_dissimilarity_index cdi
on cdi."LEAID" = schools."LEAID"
and cdi."YEAR" = schools."YEAR"
group by 1, 2, 3, 4
having count(distinct "COMBOKEY") >=5
order by 2, 1,3; 


-- REGION 1

select schools."LEA_NAME", 
schools."LEA_STATE_NAME",
schools."YEAR",
schools."LEAID",
count(distinct "COMBOKEY") as school_count,
SUM("SCH_FTESERVICES_PSY" + "SCH_FTESERVICES_SOC") as socioemotional_staff,
SUM("SCH_FTESECURITY_LEO" + "SCH_FTESECURITY_GUA") as law_enforcement_presence,

-- Total enrollment by race
SUM("SCH_ENR_WH_M" + "SCH_ENR_WH_F") as white_enrollment,
SUM("SCH_ENR_BL_M" + "SCH_ENR_BL_F") as black_enrollment,
SUM("SCH_ENR_HI_M" + "SCH_ENR_HI_F") as hispanic_enrollment,
SUM("SCH_ENR_AS_M" + "SCH_ENR_AS_F") as asian_enrollment,
SUM("SCH_ENR_AM_M" + "SCH_ENR_AM_F") as native_american_enrollment,
SUM("SCH_ENR_HP_M" + "SCH_ENR_HP_F") as hawaiian_pacific_islander_enrollment,
SUM("SCH_ENR_TR_M" + "SCH_ENR_TR_F") as two_or_more_races_enrollment,

-- Total GT enrollment by race
SUM("SCH_GTENR_WH_M" + "SCH_GTENR_WH_F") as white_GT_enrollment,
SUM("SCH_GTENR_BL_M" + "SCH_GTENR_BL_F") as black_GT_enrollment,
SUM("SCH_GTENR_HI_M" + "SCH_GTENR_HI_F") as hispanic_GT_enrollment,
SUM("SCH_GTENR_AS_M" + "SCH_GTENR_AS_F") as asian_GT_enrollment,
SUM("SCH_GTENR_AM_M" + "SCH_GTENR_AM_F") as native_american_GT_enrollment,
SUM("SCH_GTENR_HP_M" + "SCH_GTENR_HP_F") as hawaiian_pacific_islander_GT_enrollment,
SUM("SCH_GTENR_TR_M" + "SCH_GTENR_TR_F") as two_or_more_races_GT_enrollment,

-- Total AP enrollment by race
SUM("SCH_APENR_WH_M" + "SCH_APENR_WH_F") as white_AP_enrollment,
SUM("SCH_APENR_BL_M" + "SCH_APENR_BL_F") as black_AP_enrollment,
SUM("SCH_APENR_HI_M" + "SCH_APENR_HI_F") as hispanic_AP_enrollment,
SUM("SCH_APENR_AS_M" + "SCH_APENR_AS_F") as asian_AP_enrollment,
SUM("SCH_APENR_AM_M" + "SCH_APENR_AM_F") as native_american_AP_enrollment,
SUM("SCH_APENR_HP_M" + "SCH_APENR_HP_F") as hawaiian_pacific_islander_AP_enrollment,
SUM("SCH_APENR_TR_M" + "SCH_APENR_TR_F") as two_or_more_races_AP_enrollment

-- Suspensions by race
, SUM("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F") as white_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_M" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_F") as black_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_M" + "SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_SINGOOS_HI_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_F") as hispanic_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_M" + "SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_SINGOOS_AS_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_F") as asian_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_M" + "SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_SINGOOS_AM_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_F") as native_american_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_M" + "SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_SINGOOS_HP_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_F") as hawaiian_pacific_islander_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_M" + "SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_SINGOOS_TR_F" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_M" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_F") as two_or_more_races_oos_suspensions 


-- Law enforcement interactions by race
, SUM("SCH_DISCWODIS_REF_WH_M" + "SCH_DISCWODIS_REF_WH_M" + "SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M" + "SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M" + "SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWODIS_ARR_WH_M" + "SCH_DISCWODIS_ARR_WH_M" + "SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M" + "SCH_DISCWDIS_ARR_IDEA_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M" + "SCH_DISCWDIS_ARR_IDEA_WH_F") as white_le_referrals_arrests 
, SUM("SCH_DISCWODIS_REF_BL_M" + "SCH_DISCWODIS_REF_BL_M" + "SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M" + "SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M" + "SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWODIS_ARR_BL_M" + "SCH_DISCWODIS_ARR_BL_M" + "SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M" + "SCH_DISCWDIS_ARR_IDEA_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M" + "SCH_DISCWDIS_ARR_IDEA_BL_F") as black_le_referrals_arrests 
, SUM("SCH_DISCWODIS_REF_HI_M" + "SCH_DISCWODIS_REF_HI_M" + "SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M" + "SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M" + "SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWODIS_ARR_HI_M" + "SCH_DISCWODIS_ARR_HI_M" + "SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M" + "SCH_DISCWDIS_ARR_IDEA_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M" + "SCH_DISCWDIS_ARR_IDEA_HI_F") as hispanic_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_AS_M" + "SCH_DISCWODIS_REF_AS_M" + "SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M" + "SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M" + "SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWODIS_ARR_AS_M" + "SCH_DISCWODIS_ARR_AS_M" + "SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M" + "SCH_DISCWDIS_ARR_IDEA_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M" + "SCH_DISCWDIS_ARR_IDEA_AS_F") as asian_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_AM_M" + "SCH_DISCWODIS_REF_AM_M" + "SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M" + "SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M" + "SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWODIS_ARR_AM_M" + "SCH_DISCWODIS_ARR_AM_M" + "SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M" + "SCH_DISCWDIS_ARR_IDEA_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M" + "SCH_DISCWDIS_ARR_IDEA_AM_F") as native_american_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_HP_M" + "SCH_DISCWODIS_REF_HP_M" + "SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M" + "SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M" + "SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWODIS_ARR_HP_M" + "SCH_DISCWODIS_ARR_HP_M" + "SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M" + "SCH_DISCWDIS_ARR_IDEA_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M" + "SCH_DISCWDIS_ARR_IDEA_HP_F") as hawaiian_pacific_islander_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_TR_M" + "SCH_DISCWODIS_REF_TR_M" + "SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M" + "SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M" + "SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWODIS_ARR_TR_M" + "SCH_DISCWODIS_ARR_TR_M" + "SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M" + "SCH_DISCWDIS_ARR_IDEA_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M" + "SCH_DISCWDIS_ARR_IDEA_TR_F") as two_or_more_races_le_referrals_arrests


from schools inner join classified_dissimilarity_index cdi
on cdi."LEAID" = schools."LEAID"
and cdi."YEAR" = schools."YEAR"
where schools."LEA_STATE_NAME" in ('CONNECTICUT', 'MAINE', 'MASSACHUSETTS', 'NEW HAMPSHIRE', 'RHODE ISLAND',  'VERMONT',
'NEW JERSEY', 'NEW YORK', 'PENNSYLVANIA')
group by 1, 2, 3, 4
having count(distinct "COMBOKEY") >=5
order by 2, 1,3; 



-- Region 2: Midwest

select schools."LEA_NAME", 
schools."LEA_STATE_NAME",
schools."YEAR",
schools."LEAID",
count(distinct "COMBOKEY") as school_count,
SUM("SCH_FTESERVICES_PSY" + "SCH_FTESERVICES_SOC") as socioemotional_staff,
SUM("SCH_FTESECURITY_LEO" + "SCH_FTESECURITY_GUA") as law_enforcement_presence,

-- Total enrollment by race
SUM("SCH_ENR_WH_M" + "SCH_ENR_WH_F") as white_enrollment,
SUM("SCH_ENR_BL_M" + "SCH_ENR_BL_F") as black_enrollment,
SUM("SCH_ENR_HI_M" + "SCH_ENR_HI_F") as hispanic_enrollment,
SUM("SCH_ENR_AS_M" + "SCH_ENR_AS_F") as asian_enrollment,
SUM("SCH_ENR_AM_M" + "SCH_ENR_AM_F") as native_american_enrollment,
SUM("SCH_ENR_HP_M" + "SCH_ENR_HP_F") as hawaiian_pacific_islander_enrollment,
SUM("SCH_ENR_TR_M" + "SCH_ENR_TR_F") as two_or_more_races_enrollment,

-- Total GT enrollment by race
SUM("SCH_GTENR_WH_M" + "SCH_GTENR_WH_F") as white_GT_enrollment,
SUM("SCH_GTENR_BL_M" + "SCH_GTENR_BL_F") as black_GT_enrollment,
SUM("SCH_GTENR_HI_M" + "SCH_GTENR_HI_F") as hispanic_GT_enrollment,
SUM("SCH_GTENR_AS_M" + "SCH_GTENR_AS_F") as asian_GT_enrollment,
SUM("SCH_GTENR_AM_M" + "SCH_GTENR_AM_F") as native_american_GT_enrollment,
SUM("SCH_GTENR_HP_M" + "SCH_GTENR_HP_F") as hawaiian_pacific_islander_GT_enrollment,
SUM("SCH_GTENR_TR_M" + "SCH_GTENR_TR_F") as two_or_more_races_GT_enrollment,

-- Total AP enrollment by race
SUM("SCH_APENR_WH_M" + "SCH_APENR_WH_F") as white_AP_enrollment,
SUM("SCH_APENR_BL_M" + "SCH_APENR_BL_F") as black_AP_enrollment,
SUM("SCH_APENR_HI_M" + "SCH_APENR_HI_F") as hispanic_AP_enrollment,
SUM("SCH_APENR_AS_M" + "SCH_APENR_AS_F") as asian_AP_enrollment,
SUM("SCH_APENR_AM_M" + "SCH_APENR_AM_F") as native_american_AP_enrollment,
SUM("SCH_APENR_HP_M" + "SCH_APENR_HP_F") as hawaiian_pacific_islander_AP_enrollment,
SUM("SCH_APENR_TR_M" + "SCH_APENR_TR_F") as two_or_more_races_AP_enrollment

-- Suspensions by race
, SUM("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F") as white_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_M" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_F") as black_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_M" + "SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_SINGOOS_HI_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_F") as hispanic_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_M" + "SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_SINGOOS_AS_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_F") as asian_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_M" + "SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_SINGOOS_AM_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_F") as native_american_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_M" + "SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_SINGOOS_HP_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_F") as hawaiian_pacific_islander_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_M" + "SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_SINGOOS_TR_F" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_M" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_F") as two_or_more_races_oos_suspensions 


-- Law enforcement interactions by race
, SUM("SCH_DISCWODIS_REF_WH_M" + "SCH_DISCWODIS_REF_WH_M" + "SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M" + "SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M" + "SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWODIS_ARR_WH_M" + "SCH_DISCWODIS_ARR_WH_M" + "SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M" + "SCH_DISCWDIS_ARR_IDEA_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M" + "SCH_DISCWDIS_ARR_IDEA_WH_F") as white_le_referrals_arrests 
, SUM("SCH_DISCWODIS_REF_BL_M" + "SCH_DISCWODIS_REF_BL_M" + "SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M" + "SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M" + "SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWODIS_ARR_BL_M" + "SCH_DISCWODIS_ARR_BL_M" + "SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M" + "SCH_DISCWDIS_ARR_IDEA_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M" + "SCH_DISCWDIS_ARR_IDEA_BL_F") as black_le_referrals_arrests 
, SUM("SCH_DISCWODIS_REF_HI_M" + "SCH_DISCWODIS_REF_HI_M" + "SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M" + "SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M" + "SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWODIS_ARR_HI_M" + "SCH_DISCWODIS_ARR_HI_M" + "SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M" + "SCH_DISCWDIS_ARR_IDEA_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M" + "SCH_DISCWDIS_ARR_IDEA_HI_F") as hispanic_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_AS_M" + "SCH_DISCWODIS_REF_AS_M" + "SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M" + "SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M" + "SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWODIS_ARR_AS_M" + "SCH_DISCWODIS_ARR_AS_M" + "SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M" + "SCH_DISCWDIS_ARR_IDEA_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M" + "SCH_DISCWDIS_ARR_IDEA_AS_F") as asian_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_AM_M" + "SCH_DISCWODIS_REF_AM_M" + "SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M" + "SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M" + "SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWODIS_ARR_AM_M" + "SCH_DISCWODIS_ARR_AM_M" + "SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M" + "SCH_DISCWDIS_ARR_IDEA_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M" + "SCH_DISCWDIS_ARR_IDEA_AM_F") as native_american_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_HP_M" + "SCH_DISCWODIS_REF_HP_M" + "SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M" + "SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M" + "SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWODIS_ARR_HP_M" + "SCH_DISCWODIS_ARR_HP_M" + "SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M" + "SCH_DISCWDIS_ARR_IDEA_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M" + "SCH_DISCWDIS_ARR_IDEA_HP_F") as hawaiian_pacific_islander_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_TR_M" + "SCH_DISCWODIS_REF_TR_M" + "SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M" + "SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M" + "SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWODIS_ARR_TR_M" + "SCH_DISCWODIS_ARR_TR_M" + "SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M" + "SCH_DISCWDIS_ARR_IDEA_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M" + "SCH_DISCWDIS_ARR_IDEA_TR_F") as two_or_more_races_le_referrals_arrests


from schools inner join classified_dissimilarity_index cdi
on cdi."LEAID" = schools."LEAID"
and cdi."YEAR" = schools."YEAR"
where schools."LEA_STATE_NAME" in ('ILLINOIS',
 'INDIANA',
 'MICHIGAN',
 'OHIO',
 'WISCONSIN',
 'IOWA',
 'KANSAS',
 'MINNESOTA',
 'MISSOURI',
 'NEBRASKA',
 'NORTH DAKOTA',
 'SOUTH DAKOTA')
group by 1, 2, 3, 4
having count(distinct "COMBOKEY") >=5
order by 2, 1,3; 


-- Region 3: South

select schools."LEA_NAME", 
schools."LEA_STATE_NAME",
schools."YEAR",
schools."LEAID",
count(distinct "COMBOKEY") as school_count,
SUM("SCH_FTESERVICES_PSY" + "SCH_FTESERVICES_SOC") as socioemotional_staff,
SUM("SCH_FTESECURITY_LEO" + "SCH_FTESECURITY_GUA") as law_enforcement_presence,

-- Total enrollment by race
SUM("SCH_ENR_WH_M" + "SCH_ENR_WH_F") as white_enrollment,
SUM("SCH_ENR_BL_M" + "SCH_ENR_BL_F") as black_enrollment,
SUM("SCH_ENR_HI_M" + "SCH_ENR_HI_F") as hispanic_enrollment,
SUM("SCH_ENR_AS_M" + "SCH_ENR_AS_F") as asian_enrollment,
SUM("SCH_ENR_AM_M" + "SCH_ENR_AM_F") as native_american_enrollment,
SUM("SCH_ENR_HP_M" + "SCH_ENR_HP_F") as hawaiian_pacific_islander_enrollment,
SUM("SCH_ENR_TR_M" + "SCH_ENR_TR_F") as two_or_more_races_enrollment,

-- Total GT enrollment by race
SUM("SCH_GTENR_WH_M" + "SCH_GTENR_WH_F") as white_GT_enrollment,
SUM("SCH_GTENR_BL_M" + "SCH_GTENR_BL_F") as black_GT_enrollment,
SUM("SCH_GTENR_HI_M" + "SCH_GTENR_HI_F") as hispanic_GT_enrollment,
SUM("SCH_GTENR_AS_M" + "SCH_GTENR_AS_F") as asian_GT_enrollment,
SUM("SCH_GTENR_AM_M" + "SCH_GTENR_AM_F") as native_american_GT_enrollment,
SUM("SCH_GTENR_HP_M" + "SCH_GTENR_HP_F") as hawaiian_pacific_islander_GT_enrollment,
SUM("SCH_GTENR_TR_M" + "SCH_GTENR_TR_F") as two_or_more_races_GT_enrollment,

-- Total AP enrollment by race
SUM("SCH_APENR_WH_M" + "SCH_APENR_WH_F") as white_AP_enrollment,
SUM("SCH_APENR_BL_M" + "SCH_APENR_BL_F") as black_AP_enrollment,
SUM("SCH_APENR_HI_M" + "SCH_APENR_HI_F") as hispanic_AP_enrollment,
SUM("SCH_APENR_AS_M" + "SCH_APENR_AS_F") as asian_AP_enrollment,
SUM("SCH_APENR_AM_M" + "SCH_APENR_AM_F") as native_american_AP_enrollment,
SUM("SCH_APENR_HP_M" + "SCH_APENR_HP_F") as hawaiian_pacific_islander_AP_enrollment,
SUM("SCH_APENR_TR_M" + "SCH_APENR_TR_F") as two_or_more_races_AP_enrollment

-- Suspensions by race
, SUM("SCH_DISCWODIS_MULTOOS_WH_M" + "SCH_DISCWODIS_SINGOOS_WH_M" + "SCH_DISCWODIS_MULTOOS_WH_F" + "SCH_DISCWODIS_SINGOOS_WH_F" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_M" + "SCH_DISCWDIS_SINGOOS_IDEA_WH_F" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_M" + "SCH_DISCWDIS_MULTOOS_IDEA_WH_F") as white_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_BL_M" + "SCH_DISCWODIS_SINGOOS_BL_M" + "SCH_DISCWODIS_MULTOOS_BL_F" + "SCH_DISCWODIS_SINGOOS_BL_F" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_M" + "SCH_DISCWDIS_SINGOOS_IDEA_BL_F" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_M" + "SCH_DISCWDIS_MULTOOS_IDEA_BL_F") as black_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HI_M" + "SCH_DISCWODIS_SINGOOS_HI_M" + "SCH_DISCWODIS_MULTOOS_HI_F" + "SCH_DISCWODIS_SINGOOS_HI_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HI_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HI_F") as hispanic_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AS_M" + "SCH_DISCWODIS_SINGOOS_AS_M" + "SCH_DISCWODIS_MULTOOS_AS_F" + "SCH_DISCWODIS_SINGOOS_AS_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AS_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AS_F") as asian_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_AM_M" + "SCH_DISCWODIS_SINGOOS_AM_M" + "SCH_DISCWODIS_MULTOOS_AM_F" + "SCH_DISCWODIS_SINGOOS_AM_F" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_M" + "SCH_DISCWDIS_SINGOOS_IDEA_AM_F" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_M" + "SCH_DISCWDIS_MULTOOS_IDEA_AM_F") as native_american_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_HP_M" + "SCH_DISCWODIS_SINGOOS_HP_M" + "SCH_DISCWODIS_MULTOOS_HP_F" + "SCH_DISCWODIS_SINGOOS_HP_F" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_M" + "SCH_DISCWDIS_SINGOOS_IDEA_HP_F" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_M" + "SCH_DISCWDIS_MULTOOS_IDEA_HP_F") as hawaiian_pacific_islander_oos_suspensions 
, SUM("SCH_DISCWODIS_MULTOOS_TR_M" + "SCH_DISCWODIS_SINGOOS_TR_M" + "SCH_DISCWODIS_MULTOOS_TR_F" + "SCH_DISCWODIS_SINGOOS_TR_F" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_M" + "SCH_DISCWDIS_SINGOOS_IDEA_TR_F" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_M" + "SCH_DISCWDIS_MULTOOS_IDEA_TR_F") as two_or_more_races_oos_suspensions 


-- Law enforcement interactions by race
, SUM("SCH_DISCWODIS_REF_WH_M" + "SCH_DISCWODIS_REF_WH_M" + "SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWODIS_REF_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M" + "SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWDIS_REF_IDEA_WH_M" + "SCH_DISCWDIS_REF_IDEA_WH_F" + "SCH_DISCWODIS_ARR_WH_M" + "SCH_DISCWODIS_ARR_WH_M" + "SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWODIS_ARR_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M" + "SCH_DISCWDIS_ARR_IDEA_WH_F" + "SCH_DISCWDIS_ARR_IDEA_WH_M" + "SCH_DISCWDIS_ARR_IDEA_WH_F") as white_le_referrals_arrests 
, SUM("SCH_DISCWODIS_REF_BL_M" + "SCH_DISCWODIS_REF_BL_M" + "SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWODIS_REF_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M" + "SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWDIS_REF_IDEA_BL_M" + "SCH_DISCWDIS_REF_IDEA_BL_F" + "SCH_DISCWODIS_ARR_BL_M" + "SCH_DISCWODIS_ARR_BL_M" + "SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWODIS_ARR_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M" + "SCH_DISCWDIS_ARR_IDEA_BL_F" + "SCH_DISCWDIS_ARR_IDEA_BL_M" + "SCH_DISCWDIS_ARR_IDEA_BL_F") as black_le_referrals_arrests 
, SUM("SCH_DISCWODIS_REF_HI_M" + "SCH_DISCWODIS_REF_HI_M" + "SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWODIS_REF_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M" + "SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWDIS_REF_IDEA_HI_M" + "SCH_DISCWDIS_REF_IDEA_HI_F" + "SCH_DISCWODIS_ARR_HI_M" + "SCH_DISCWODIS_ARR_HI_M" + "SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWODIS_ARR_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M" + "SCH_DISCWDIS_ARR_IDEA_HI_F" + "SCH_DISCWDIS_ARR_IDEA_HI_M" + "SCH_DISCWDIS_ARR_IDEA_HI_F") as hispanic_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_AS_M" + "SCH_DISCWODIS_REF_AS_M" + "SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWODIS_REF_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M" + "SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWDIS_REF_IDEA_AS_M" + "SCH_DISCWDIS_REF_IDEA_AS_F" + "SCH_DISCWODIS_ARR_AS_M" + "SCH_DISCWODIS_ARR_AS_M" + "SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWODIS_ARR_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M" + "SCH_DISCWDIS_ARR_IDEA_AS_F" + "SCH_DISCWDIS_ARR_IDEA_AS_M" + "SCH_DISCWDIS_ARR_IDEA_AS_F") as asian_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_AM_M" + "SCH_DISCWODIS_REF_AM_M" + "SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWODIS_REF_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M" + "SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWDIS_REF_IDEA_AM_M" + "SCH_DISCWDIS_REF_IDEA_AM_F" + "SCH_DISCWODIS_ARR_AM_M" + "SCH_DISCWODIS_ARR_AM_M" + "SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWODIS_ARR_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M" + "SCH_DISCWDIS_ARR_IDEA_AM_F" + "SCH_DISCWDIS_ARR_IDEA_AM_M" + "SCH_DISCWDIS_ARR_IDEA_AM_F") as native_american_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_HP_M" + "SCH_DISCWODIS_REF_HP_M" + "SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWODIS_REF_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M" + "SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWDIS_REF_IDEA_HP_M" + "SCH_DISCWDIS_REF_IDEA_HP_F" + "SCH_DISCWODIS_ARR_HP_M" + "SCH_DISCWODIS_ARR_HP_M" + "SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWODIS_ARR_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M" + "SCH_DISCWDIS_ARR_IDEA_HP_F" + "SCH_DISCWDIS_ARR_IDEA_HP_M" + "SCH_DISCWDIS_ARR_IDEA_HP_F") as hawaiian_pacific_islander_le_referrals_arrests
, SUM("SCH_DISCWODIS_REF_TR_M" + "SCH_DISCWODIS_REF_TR_M" + "SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWODIS_REF_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M" + "SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWDIS_REF_IDEA_TR_M" + "SCH_DISCWDIS_REF_IDEA_TR_F" + "SCH_DISCWODIS_ARR_TR_M" + "SCH_DISCWODIS_ARR_TR_M" + "SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWODIS_ARR_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M" + "SCH_DISCWDIS_ARR_IDEA_TR_F" + "SCH_DISCWDIS_ARR_IDEA_TR_M" + "SCH_DISCWDIS_ARR_IDEA_TR_F") as two_or_more_races_le_referrals_arrests


from schools inner join classified_dissimilarity_index cdi
on cdi."LEAID" = schools."LEAID"
and cdi."YEAR" = schools."YEAR"
where schools."LEA_STATE_NAME" in 

-- Region 1
('CONNECTICUT', 'MAINE', 'MASSACHUSETTS', 'NEW HAMPSHIRE', 'RHODE ISLAND',  'VERMONT',
'NEW JERSEY', 'NEW YORK', 'PENNSYLVANIA')


-- -- Region 2
-- ('ILLINOIS',
--  'INDIANA',
--  'MICHIGAN',
--  'OHIO',
--  'WISCONSIN',
--  'IOWA',
--  'KANSAS',
--  'MINNESOTA',
--  'MISSOURI',
--  'NEBRASKA',
--  'NORTH DAKOTA',
--  'SOUTH DAKOTA')

-- -- Region 3
-- ('DELAWARE',
--  'FLORIDA',
--  'GEORGIA',
--  'MARYLAND',
--  'NORTH CAROLINA',
--  'SOUTH CAROLINA',
--  'VIRGINIA',
--  'DISTRICT OF COLUMBIA',
--  'WEST VIRGINIA,
--  'ALABAMA',
--  'KENTUCKY',
--  'MISSISSIPPI',
--  'TENNESSEE',
--  'ARKANSAS',
--  'LOUISIANA',
--  'OKLAHOMA',
--  'TEXAS')

-- -- Region 4
-- ('ARIZONA',
--  'COLORADO',
--  'IDAHO',
--  'MONTANA',
--  'NEVADA',
--  'NEW MEXICO',
--  'UTAH',
--  'WYOMING',
--  'ALASKA',
--  'CALIFORNIA',
--  'HAWAII',
--  'OREGON',
--  'WASHINGTON'
-- )

group by 1, 2, 3, 4
having count(distinct "COMBOKEY") >=5
order by 2, 1,3; 