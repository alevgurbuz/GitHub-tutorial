
*****************************************************
** Project: Impact Evaluation for NET
** Author: Alev Gurbuz Cuneo
** Date Created: 07/22/2019
** Date 
****************************************

clear all
set more off

** Change the directory:
	
cd "C:\Users\WB502361\WBG\Julia Vaillant - Great Lakes SGBV IE DRC"

  global baseline = "11. Data analysis/baseline"
  global dta = "$baseline/dtafiles"
  global Tables = "$baseline/report/tables and graphs/tables"
  global Graphs = "$baseline/report/tables and graphs/graphs"

use "$dta\20190623_NET_Baseline_data_indicators_lb.dta"



** first, define labels
la define mar_status 1 "Married"
la define mar_status 2 "Divorced or separated", add
la define mar_status 3 "Widowed", add
la define mar_status 4 "Single", add
	
label define gender 1 "Woman / Girl"
label define gender 2 "Man / Boy", add
label define gender 98 "Don't know", add
label define gender 99 "Don't want to answer", add

hello GitHub
