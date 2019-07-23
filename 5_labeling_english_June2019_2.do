/********************************************************** 
PROGRAMMERS:   Moussa Sawadogo		 
DATE CREATED: May 2019
DESCRIPTION: This do-file labels values and variables
DATE MODIFIED(english labels): June 2019
**********************************************************/

clear
version 14.0
set more off
cap log close 

******************
* Set directory 
******************
if c(username)== "USER" {
		cd "C:\Users\USER\Desktop\OneDrive\Documents\Great Lakes SGBV IE DRC" 
		}

*
local today = 20190519

** Log file
log using "9. Data _ Analysis/Data analysis/logfiles\labeling_`today'.log", replace

* Inputs
global rawdata = "9. Data _ Analysis/Data analysis/csvfile"

* Outputs
global dta = "9. Data _ Analysis/Data analysis/dtafiles"

*Import the clean dataset
use "$dta\20190425_NET_Baseline_data_indicators.dta", clear

********************************************************
* Labeling Values in EN *
********************************************************

* Dropping all label
label drop _all

# delimit 
label def surveyor_lb 
	10 "Christine"
	11 "Providence"
	12 "Claudine"
	14 "Olive"
	21 "Martine"
	22 "Beatrice"
	23 "Liliane"
	24 "Aline";

label def healthzone_lb
	1 "Goma / HEAL Africa"
	2 "Kirotshe"
	3 "Rutshuru"
	4 "Kayna"
	5 "Bukavu / Panzi"
	6 "Kaniola"
	7 "Minova";
	
label def language_lb
	1 "Swahili"
	2 "Mashi"
	3 "Kinyarwanda";
	
# delimit cr
	
label val id_enquetrice surveyor_lb
label val id_zonesante healthzone_lb
label val langueen language_lb

label define province 1 "South Kivu"
label define province 2 "North Kivu", add

label define yesno_lb 0 "No"
label define yesno_lb 1 "Yes", add
label define yesno_lb 98 "Don't Know", add
label define yesno_lb 99 "Don't Want to Answer", add 

la define couple_decisions 0 "In none or very few decisions"
la define couple_decisions 1 "In some decisions", add
la define couple_decisions 2 "In all or almost all decisions", add

label define measure    0 "Not at all"
label define measure	1 "A little", add
label define measure	2 "Moderately", add
label define measure	3 "Absolutely", add
	
la define marital_status 1 "Married with traditional marriage certificate, co-resident"
la define marital_status 2 "Married with traditional marriage certificate, non co-resident", add
la define marital_status 3 "Married with religious marriage certificate, co-resident", add
la define marital_status 4 "Married with religious marriage certificate, non co-resident", add
la define marital_status 5 "Married without a marriage certificate, co-resident", add
la define marital_status 6 "Married without a marriage certificate, non co-resident", add
la define marital_status 7 "Living with a man without being married", add
la define marital_status 8 "Divorced", add
la define marital_status 9 "Separated", add
la define marital_status 10 "Widowed", add
la define marital_status 11 "Single, never been in a couple relationship before", add
la define marital_status 98 "Don't know", add
la define marital_status 99 "Don't want to answer", add
	
la define mar_status 1 "Married"
la define mar_status 2 "Divorced or separated", add
la define mar_status 3 "Widowed", add
la define mar_status 4 "Single", add
	
label define nb_times 1 "He is the only one"
label define nb_times 2 "I have lived or been married to a man before", add
label define nb_times 98 "Don't know", add
label define nb_times 99 "Don't want to answer", add
	
lab define reason_marriage 1 "We chose each other"
lab define reason_marriage 2 "Our marriage was arranged but we could have refused", add
lab define reason_marriage 3 "Our marriage was arranged", add
lab define reason_marriage 4 "My husband took me by force", add
lab define reason_marriage 96 "Other", add
lab define reason_marriage 98 "Don't know", add
lab define reason_marriage 99 "Don't want to answer", add
	
label define reason 1 "They chose each other" 
label define reason 0 "Other reason", add
	
label define studies_details 1 "Has never been to school"
label define studies_details 2 "1st year primary school", add
label define studies_details 3 "2nd year primary school", add
label define studies_details 4 "3rd year primary school", add
label define studies_details 5 "4th year primary school", add
label define studies_details 6 "5th year primary school", add
label define studies_details 7 "6th year primary school", add
label define studies_details 8 "1st year secondary school", add
label define studies_details 9 "2nd year secondary school", add
label define studies_details 10 "3rd year secondary school", add
label define studies_details 11 "4th year secondary school", add
label define studies_details 12 "5th year secondary school", add
label define studies_details 13 "6th year secondary school", add
label define studies_details 14 "Preparatory year", add
label define studies_details 15 "1st graduat", add
label define studies_details 16 "2nd graduat", add
label define studies_details 17 "3rd graduat", add
label define studies_details 18 "1st year licence", add
label define studies_details 19 "2nd year licence or +", add
label define studies_details 98 "Don't know", add
label define studies_details 99 "Don't want to answer", add
	
label define gender 1 "Woman / Girl"
label define gender 2 "Man / Boy", add
label define gender 98 "Don't know", add
label define gender 99 "Don't want to answer", add
	
label define lien_familial 1 "Neveu / niece"
label define lien_familial 2 "Cousin / cousine", add
label define lien_familial 3 "Enfant de votre mari et d'une autre epouse", add
label define lien_familial 4 "Enfant d'un membre de votre famille", add
label define lien_familial 5 "Enfant d'un non-membre de votre famille", add
label define lien_familial 96 "Autre", add
label define lien_familial 98 "Ne sait pas", add
label define lien_familial 99 "Ne veut pas repondre", add

label define lrelhh 1 "Head of household/Spouse" 
label define lrelhh 0 "Other relationship", add

label define intensity 0 "Not at all"
label define intensity 1 "A little", add
label define intensity 2 "Moderately", add
label define intensity 3 "A lot", add

label define bonheur 1 "Very happy"
label define bonheur 2 "Somewhat happy", add
label define bonheur 3 "Not very happy", add
label define bonheur 4 "Very unhappy", add
label define bonheur 98 "Don't know", add
label define bonheur 99 "Don't want to answer", add
	
label define province_origin 1 "North Kivu"
label define province_origin 2 "South Kivu", add
label define province_origin 3 "DRC, outside of Kivu", add
label define province_origin 4 "Bordering countries of DRC", add
label define province_origin 96 "Other", add
	
label define territory 1 "Beni / Butembo"
label define territory	2 "Lubero", add
label define territory	3 "Masisi", add
label define territory	4 "Rutshuru", add
label define territory	5 "Walikale", add
label define territory	6 "Nyiragongo", add
label define territory	7 "Goma", add
label define territory	8 "Idjwi", add
label define territory	9 "Kabare", add
label define territory	10 "Kalehe", add
label define territory	11 "Mwenga", add
label define territory	12 "Shabunda", add
label define territory	13 "Uvira", add
label define territory	14 "Fizi", add
label define territory	15 "Walungu", add
label define territory	16 "Bukavu", add
label define territory	17 "Maniema", add
label define territory	18 "Katanga", add
label define territory	19 "Kasai Oriental", add
label define territory	20 "Kasai Occidental", add
label define territory	21 "Province Orientale", add
label define territory	22 "Equateur Province", add
label define territory	23 "Bandundu", add
label define territory	24 "Kinshasa", add
label define territory	25 "Bas-Congo", add
label define territory	26 "Rwanda", add
label define territory	27 "Burundi", add
label define territory	28 "Tanzania", add
label define territory	29 "Uganda", add
label define territory	30 "Zambia", add
label define territory	31 "Angola", add
label define territory	32 "Congo-Brazzaville", add
label define territory	33 "Central African Republic", add
label define territory	34 "South Sudan", add
	
label define reason_relocation 1 "Presence of rebels, armed groups, conflicts"
label define reason_relocation 2 "Marriage", add
label define reason_relocation 3 "Health reasons", add
label define reason_relocation 4 "Bad harvest", add
label define reason_relocation 5 "Limited access to water", add
label define reason_relocation 6 "Family conflicts", add
label define reason_relocation 7 "Family changes (children's schooling, deaths, births)", add
label define reason_relocation 8 "Land issues (requisition of plots, rent increase)", add
label define reason_relocation 9 "Professional reasons", add
label define reason_relocation 10 "Natural Disasters", add
label define reason_relocation 96 "Other", add
label define reason_relocation 98 "Don't know", add
label define reason_relocation 99 "Don't want to answer", add
	
label define link_hhh 1 "She is the head of the household"
label define link_hhh 2 "Spouse / First spouse / Partner", add
label define link_hhh 3 "Second spouse / Second partner", add
label define link_hhh 4 "Third spouse / Third partner (or more)", add
label define link_hhh 5 "Daughter", add
label define link_hhh 6 "Adopted child", add
label define link_hhh 7 "Mother", add
label define link_hhh 8 "Grand-mother", add
label define link_hhh 9 "Sister", add
label define link_hhh 10 "Grand-daughter", add
label define link_hhh 11 "Daughter-in-law", add
label define link_hhh 12 "Sister-in-law", add
label define link_hhh 13 "Mother-in-law / stepmother", add
label define link_hhh 14 "Niece", add
label define link_hhh 15 "Other (parent)", add
label define link_hhh 96 "Other(non-parente) specify:", add
label define link_hhh 98 "Don't know", add
label define link_hhh 99 "Don't want to answer", add
	
label define education_hhh 1 "Did not go to school"
label define education_hhh 2 "Primary school, incomplete", add
label define education_hhh 3 "Primary school, complete", add
label define education_hhh 4 "Secondary school, incomplete", add
label define education_hhh 5 "Secondary school, complete", add
label define education_hhh 6 "Higher education, incomplete", add
label define education_hhh 7 "Higher education, complete", add
label define education_hhh 96 "Other (specify)", add
label define education_hhh 98 "Don't know", add
label define education_hhh 99 "Don't want to answer", add

label define cooking 1 "In the house (dedicated room)"
label define cooking 2 "In the house(no dedicated room)", add
label define cooking 3 "In a separate building", add
label define cooking 4 "Outside", add
label define cooking 96 "Other (specify)", add
label define cooking 98 "Don't know", add
label define cooking 99 "Don't want to answer", add
		
label define sleeping 1 "On the ground/ on leaves"
label define sleeping	2 "On a mat/ tarp", add
label define sleeping 3 "On a mattress", add
label define sleeping	96 "Other", add
label define sleeping	98 "Don't know", add
label define sleeping	99 "Don't want to answer", add
	
label define roof 1 "Natural material"
label define roof 2 "Rudimentary material", add
label define roof 3 "Elaborated material", add
label define roof 96 "Other", add
label define roof 98 "Don't know", add
label define roof 99 "Don't want to answer", add
	
label define walls 1 "Natural Material"
label define walls 2 "Rudimentary material", add
label define walls 3 "Elaborated material", add
label define walls 96 "Other", add
label define walls 98 "Don't know", add
label define walls 99 "Don't want to answer", add
	
label define floor 1 "Natural Material"
label define floor 2 "Rudimentary material", add
label define floor 3 "Elaborated material", add
label define floor 96 "Other", add
label define floor 98 "Don't know", add 
label define floor 99 "Don't want to answer", add
	
label define water 1 "Surface water"
label define water 2 "Non-improved spring water", add
label define water 3 "Improved spring water", add
label define water 4 "Public tap water", add
label define water 5 "Tap water at home (private)", add
label define water 6 "Rain water", add
label define water 7 "Bottled or sachet water ", add 
label define water 96 "Other", add 
label define water 98 "Don't know", add 
label define water 99 "Don't want to answer", add
	
label define toilettes 1 "No restroom / in the open environment"
label define toilettes 2 "Hole without fitted slab", add
label define toilettes 3 "Hole with fitted slab", add
label define toilettes 4 "Flush/ Manual flush", add
label define toilettes 96 "Other", add 
label define toilettes 98 "Don't know", add
label define toilettes 99 "Don't want to answer", add
	
label define detention_bien 1 "The respondent"
label define detention_bien	2 "Her partner", add
label define detention_bien	3 "Another man in the household", add
label define detention_bien	4 "Another woman in the household", add
label define detention_bien	5 "A person from outside the household", add
label define detention_bien	98 "Don't know", add
label define detention_bien	99 "Don't want to answer", add
	
label def probability 1 "Very probable"
label def probability 2 "Quite probable", add
label def probability 3 "Unlikely", add
label def probability 4 "Not probable at all", add
label def probability 98 "Don't know ", add
label def probability 99 "Don't want to answer", add
	
label def yesno_spe 1 "Yes, at least one time"
label def yesno_spe 2 "No, never", add
label def yesno_spe 98 "Don't know", add
label def yesno_spe 99 "Don't want to answer", add
	
label def ideal_trajectory 1 "Join the family farming activity"
label def ideal_trajectory 2 "Leading the family farm business / family business (including self-employment)", add
label def ideal_trajectory 3 "Exercising a qualified job as a teacher or doctor", add
label def ideal_trajectory 4 "Join the army", add
label def ideal_trajectory 5 "Working for the government/ Civil servant", add
label def ideal_trajectory 6 "Working for a private company/ working for a NGO", add
label def ideal_trajectory 7 "Does not want their daughter / son working outside the house (wants them to stay in the home to help the family)", add
label def ideal_trajectory 8 "Join religious orders", add
label def ideal_trajectory 96 "Other", add
label def ideal_trajectory 98 "Don't know", add
label def ideal_trajectory 99 "Don't want to answer", add
	
label def task_sharing 1 "I do everything"
label def task_sharing 2 "It is often me who deals with it with the help of another woman / girl from the household", add
label def task_sharing 3 "It is often me who takes care of it, with the help of my spouse", add
label def task_sharing 4 "The task is shared with a woman / girl from the household", add
label def task_sharing 5 "The task is shared with my partner", add
label def task_sharing 6 "It is mainly another woman / girl who takes care of it, I sometimes help her", add
label def task_sharing 7 "It is another woman / girl who takes care of it alone", add
label def task_sharing 8 "It is my partner who takes care of it most of the time", add
label def task_sharing 97 "Non-applicable", add
label def task_sharing 98 "Don't know", add
label def task_sharing 99 "Don't want to answer", add
	
label def reason_nonwork 1 "I don't need it"
label def reason_nonwork 2 "I can't: disabled", add
label def reason_nonwork 3 " I can't: sick", add
label def reason_nonwork 4 "I can't: pregnant/ childbirth", add
label def reason_nonwork 5 "I can't: no time, domestic obligations", add
label def reason_nonwork 6 "My husband/partner does not want to /it is not acceptable", add
label def reason_nonwork 7 "There is no job", add
label def reason_nonwork 8 "I am not qualified for existing jobs", add
label def reason_nonwork 9 "I am a student", add
label def reason_nonwork 10 "I am retired", add
label def reason_nonwork 96 "Other", add
label def reason_nonwork 98 "Don't know", add
label def reason_nonwork 99 "Don't want to answer", add
	
label define reason_nonsearch 1 "You think there is no suitable jobs / adapted jobs for your qualifications"
label define reason_nonsearch 2 "You think you do not have enough skills or qualifications", add
label define reason_nonsearch 3 "You do not feel able to look for a job because you do not know how to do it", add
label define reason_nonsearch 4 "You are still waiting for an answer from your previous searches", add
label define reason_nonsearch 5 "You think there is no work available", add
label define reason_nonsearch 6 "You have tried but you are discouraged", add
label define reason_nonsearch 7 "You are not searching because you have family obligations ", add
label define reason_nonsearch 8 "You are not searching becasue you are pregnant or have young children", add
label define reason_nonsearch 9 "You are not searching because your family does not allow you", add
label define reason_nonsearch 10 "You are waiting to resume your previous job", add
label define reason_nonsearch 11 "You don't want to work", add
label define reason_nonsearch 12 " You can't work so you are not searching", add
label define reason_nonsearch 13 "You do not have papers to work", add
label define reason_nonsearch 14 "You lack financial means to move around and find a job", add
label define reason_nonsearch 15 "You lack the resources to start an activity", add
label define reason_nonsearch 96 "Other", add
label define reason_nonsearch 98 "Don't know", add
label define reason_nonsearch 99 "Don't want to answer", add
	
label define list_activities 1 "Agriculture (vegetable)"
label define list_activities 2 "Farming/ Animal husbandry", add
label define list_activities 3 "Fishing/ Fish farming", add 
label define list_activities 4 "Harvesting/ Gathering", add 
label define list_activities 5 "Transformation of agricultural products", add
label define list_activities 6 "Hunting", add
label define list_activities 7 "Other agricultural activity (to be specified)", add
label define list_activities 8 "Non-agricultural business", add
label define list_activities 9 "Mine worker", add
label define list_activities 10 "Transportation (driver/ cart driver/ porter)", add
label define list_activities 11 "Crafts / sewing / Hairdressing", add
label define list_activities 12 "Mason", add
label define list_activities 13 "Coal merchant", add
label define list_activities 14 "Civil servant", add
label define list_activities 15 "Teacher/ Professor", add
label define list_activities 16 "Physician / Nurse / Midwife / Other Medical Profession", add
label define list_activities 17 "Religious profession", add
label define list_activities 18 "Domestic work/ Housekeeping work outside of own household", add
label define list_activities 19 "Childcare outside the household", add
label define list_activities 20 "Other non-agricultural activity to be specified", add
label define list_activities 98 "Don't know", add
label define list_activities 99 "Don't want to answer", add
	
label define descr_activities 1 "I am working for someone else for a salary"
label define descr_activities	2 "I am an employer", add
label define descr_activities	3 "I am on my own", add
label define descr_activities	4 "I help the family business without being paid", add
label define descr_activities	5 "I am an apprentice", add
label define descr_activities	6 "I work on the family plot or with the cattle of the household", add
label define descr_activities	96 "Other", add
label define descr_activities	98 "Don't know", add
label define descr_activities	99 "Don't want to answer", add
			
label define frequence_amelioration 1 "Much less often"
label define frequence_amelioration	2 "Less often", add
label define frequence_amelioration	3 "As often as before", add
label define frequence_amelioration	4 "More often", add
label define frequence_amelioration	5 "Much more often", add
label define frequence_amelioration	98 "Don't know", add
label define frequence_amelioration	99 "Don't want to answer", add
	
label define situation_secu 1 "Safety has improved"
label define situation_secu	2 "Safety has stayed the same", add
label define situation_secu	3 "Safety has deteriorated", add
label define situation_secu	98 "Don't know", add
label define situation_secu	99 "Don't want to answer", add
	
label define sentiment_secu 1 "Very very worried"
label define sentiment_secu	2 "Very worried", add
label define sentiment_secu	3 "Neither worried nor not worried", add
label define sentiment_secu	4 "Not worried", add
label define sentiment_secu	5 " Not worried at all", add
label define sentiment_secu	98 "Don't know", add
label define sentiment_secu	99 "Don't want to answer", add
	
label define situation_secu2 1 "Not safe at all"
label define situation_secu2 2 "Not really safe", add
label define situation_secu2 3 "Neither safe nor not safe", add
label define situation_secu2 4 "Rather safe", add 
label define situation_secu2 5 "Very safe", add
label define situation_secu2 98 "Don't know", add
label define situation_secu2 99 "Don't want to answer", add
	
label define groupes 0 "No group"
label define groupes 1 "Agricultural group or production group", add
label define groupes 2 "Folk dance group", add
label define groupes 3 "Religious or spiritual group", add
label define groupes 4 "Cultural group or association", add
label define groupes 5 "Health group", add
label define groupes 6 "Solidarity group", add
label define groupes 7 "Education group", add
label define groupes 8 "NGO or other civic group", add
label define groupes 9 "Women's group", add
label define groupes 10 "Village savings or credit group", add
label define groupes 11 "Community-Based Organization", add
label define groupes 96 "Other", add
label define groupes 98 "Don't know", add
label define groupes 99 "Don't want to answer", add
	
label define reactions_malade 1 "Nothing; waited for the symptoms to pass (continued normal daily activities)"
label define reactions_malade 2 "Rest", add
label define reactions_malade 3 "Change my habits like drinking differently or eating differently / homemade self-medication", add
label define reactions_malade 4 "Seeking advice or treatment", add
label define reactions_malade 96 "Other", add
label define reactions_malade 98 "Dont know", add
label define reactions_malade 99 "Don't want to answer", add
	
label define prestataire_sante 1 "Hospital"
label define prestataire_sante 2 "Health center", add
label define prestataire_sante 3 "Health post", add
label define prestataire_sante 4 "Maternity ward", add
label define prestataire_sante 5 "Community Relay", add
label define prestataire_sante 6 "Mobile Clinic", add
label define prestataire_sante 7 "Health agent", add
label define prestataire_sante 8 "Other public sector", add
label define prestataire_sante 9 "Pharmacy", add
label define prestataire_sante 10 "Medical office", add
label define prestataire_sante 11 "Traveling nurse", add
label define prestataire_sante 12 "Other private medical sector", add
label define prestataire_sante 13 "Shop", add
label define prestataire_sante 14 "Traditional healer", add
label define prestataire_sante 15 "Market", add
label define prestataire_sante 96 "Other", add
label define prestataire_sante 98 "Don't know", add
label define prestataire_sante 99 "Dont' want to answer", add
	
label define pers_medical 1 "Physician"
label define pers_medical 2 "Nurse", add
label define pers_medical 3 "Midwife", add
label define pers_medical 4 "Village matron", add
label define pers_medical 5 "Traditional healer", add
label define pers_medical 6 "Mother of the neighborhood/village", add
label define pers_medical 96 "Other", add
label define pers_medical 98 "Don't know", add
label define pers_medical 99 "Don't want to answer", add
	
label define distance_sante 1 "Less than 30mn"
label define distance_sante	2 "Between 30mn and one hour", add
label define distance_sante 3 "More than one hour", add
label define distance_sante 98 "Don't know", add
label define distance_sante 99 "Don't want to answer", add
	
label define pers_medical2 1 "Physician"
label define pers_medical2 2 "Nurse", add
label define pers_medical2 3 "Midwife", add
label define pers_medical2 4 "Village matron", add
label define pers_medical2 5 "Traditional healer", add
label define pers_medical2 6 "Mother of the neighborhood/village", add
label define pers_medical2 7 "No one", add
label define pers_medical2 96 "Other", add
label define pers_medical2 98 " Don't know", add
label define pers_medical2 99 "Don't want to answer", add
	
label define prestataire_sante2 1 "Your home"
label define prestataire_sante2	2 "Other residence", add
label define prestataire_sante2	3 "Public Hospital", add
label define prestataire_sante2	4 "Health center", add
label define prestataire_sante2	5 "Health post", add
label define prestataire_sante2	6 "Other public medical sector(specify)", add
label define prestataire_sante2	7 "Private hospital / clinic", add
label define prestataire_sante2	8 "Other private medical sector(specify)", add
label define prestataire_sante2	96 "Other", add
label define prestataire_sante2	98 " Don't know", add
label define prestataire_sante2	99 " Don't want to answer", add
			
label define difficulties 0 "No difficulty"
label define difficulties 1 "A little difficulty", add
label define difficulties 2 "Some difficulties", add
label define difficulties 3 "Many difficulties", add
label define difficulties 4 "So difficult that she could not do it", add
	
label define accord_5 1 " Do not agree at all"
label define accord_5 2 "Disagree", add
label define accord_5 3 "Neither agree nor disagree", add
label define accord_5 4 "Agree", add
label define accord_5 5 "Absolutely agree", add
label define accord_5 98 "Don't know", add
label define accord_5 99 "Don't want to answer", add
	
label define agreement_4 0 "Do not agree at all"
label define agreement_4 1 "Disagree", add
label define agreement_4 2 "Agree", add
label define agreement_4 3 "Absolutely agree", add
label define agreement_4 98 "Don't know", add
label define agreement_4 99 "Don't want to answer", add
	
label define amelioration 1 " Have improved a lot"
label define amelioration 2 " Have improved", add
label define amelioration 3 " Have stayed the same", add
label define amelioration 4 " Have deteriorated", add
label define amelioration 5 " Have deteriorated a lot", add 
	
label define resource_person 1 "My husband"
label define resource_person	2 "A woman in my family", add
label define resource_person 3 "A man in my family", add
label define resource_person 4 "Another wife of my husband", add
label define resource_person 5 "A woman from my in-laws (mother-in-law, sister-in-law, other)", add
label define resource_person 6 " A man from my in-laws", add
label define resource_person 7 "Another woman in my household (who is neither your family nor your in-laws)", add
label define resource_person 8 "Another man from my household (who is neither your family nor your in-laws)", add
label define resource_person 9 "A friend/ a mother from Community- Based Organization", add
label define resource_person 10 "A friend/ someone from a CBO", add
label define resource_person 11 " The psychosocial coach of a CBO", add
label define resource_person 12 "A woman of solidarity savings group, of AVEC", add
label define resource_person 13 "A man from a solidarity savings group, from AVEC", add
label define resource_person 14 "A nun", add
label define resource_person 15 "A religious cleric", add
label define resource_person 16 "A female nurse, a midwife, a female physician", add
label define resource_person 17 "A male nurse/ a physician", add
label define resource_person 98 "Don't know", add
label define resource_person 99 "Don't want to answer", add
	
label define referencement 1 "I went there by myself"
label define referencement 2 "Referred by the Community- Based Organization", add
label define referencement 3 "Referred by the police", add
label define referencement 4 "Referred by the community relay", add
label define referencement 5 "Refered by a legal aid service", add
label define referencement 6 "Referred by  another health center or hospital", add
label define referencement 7 "On the advice of someone", add
label define referencement 8 "By a NGO in the area (list of examples)", add
label define referencement 9 "By a family member", add
label define referencement 10 "By the church", add
label define referencement 96 "Other", add
label define referencement 98 " Don't know", add
label define referencement 99 " Don't want to answer", add
	
label define survey_location 1 "Community- Based Organization"
label define survey_location 2 " Health Center", add
label define survey_location 3 "Other public space(school,church)", add
label define survey_location 4 "At the respondent's house", add
label define survey_location 96 "Other", add
	
label define unite 1 "Dollars"
label define unite 2 " Congolese Francs", add
label define unite 96 "Other", add
label define unite 98 "Don't know", add
label define unite 99 "Don't want to answer", add
	
label define salary_portion 1 "Less than 30$"
label define salary_portion 2 "Between 30$ and 60$", add
label define salary_portion 3 "Between 60$ and 120$", add
label define salary_portion 4 "Between 120$ and 240$", add
label define salary_portion 5 " More than 240$", add
label define salary_portion 98 "Don't know", add
label define salary_portion 99 "Don't want to answer", add
	
label define other_resource 1 "There is no one else"
label define other_resource 2 " A woman in your family", add
label define other_resource 3 " A man in your family", add
label define other_resource 4 " Another wife of your husband ", add
label define other_resource 5 "A woman from your in-laws (mother-in-law, sister-in-law, other)", add
label define other_resource 6 " A man from your in-laws", add
label define other_resource 7 "Another woman from your household (who is neither your family nor your in-laws)", add
label define other_resource 8 "Another man from your household (who is neither your family nor your in-laws)", add
label define other_resource 9 "A friend/ a mother from  a Community-Based Organization", add
label define other_resource 10 "A friend /  someone from a CBO", add
label define other_resource 11 "the psychosocial coach of a CBO", add
label define other_resource 12 "A woman from a solidarity savings group, from AVEC", add
label define other_resource 13 "A man from a solidarity savings group, from AVEC", add
label define other_resource 14 " A nun", add
label define other_resource 15 " A religious cleric", add
label define other_resource 16 "A female nurse,  a midwife,  a female physician", add
label define other_resource 17 " A male nurse, a physician", add
label define other_resource 96 "Other", add
label define other_resource 98 "Don't know", add
label define other_resource 99 " Don't want to answer", add

label define frequency 0 "Not at all/ Never"
label define frequency 1 "Rarely", add
label define frequency 2 "From time to time/ sometimes", add
label define frequency 3 "Often", add

		
/** *****************************************
**** Label values 
**********************************************/

label val a7 survey_location
label val a11 province
label val province province
label val a15 yesno_lb
label val a16 yesno_lb
label val a18 marital_status
label val a20 nb_times
label val a22 reason_marriage
label val a23 yesno_lb
label val a24 studies_details
label val a26 gender
label val a28 link_hhh
label val a29 education_hhh
label val a35 yesno_lb
label val a41 province_origin
label val a41_b territory
label val a42 reason_relocation

label val b2 cooking
label val b3 sleeping
label val b4 roof
label val b5 walls
label val b6 floor
label val b7 water
label val b9 yesno_lb
label val b10 yesno_lb
label val b15 yesno_lb
label val b18 yesno_lb
label val b21 yesno_lb
label val b24 probability
label val b26 yesno_spe
label val b27 yesno_lb

lab val *_own yesno_lb
lab val *_own1 yesno_lb
label val saving yesno_lb

label val c1 yesno_lb
label val c2 yesno_lb
label val c3 ideal_trajectory
label val c4 ideal_trajectory
label val c5 task_sharing
label val c6 task_sharing 
label val c7 task_sharing

label val in_school yesno_lb
label val worked_7d yesno_lb
label val worked_6m yesno_lb
lab val labforce_7d yesno_lb
label val off_farm_main yesno_lb
label val self_emp_main yesno_lb
label val wage_emp_main yesno_lb

foreach var of varlist d2 d3 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 {  
	    label values `var' yesno_lb
          }
*

label val d18 reason_nonwork
label val d19 yesno_lb
label val d20 reason_nonsearch
label val d21 list_activities
label val d25 descr_activities
label val d30 salary_portion
label val d31 yesno_lb
label val d32 list_activities
label val d36 descr_activities
label val d41 salary_portion

foreach var of varlist d42a d42b d42c d42d d42e d42f d42g {  
	    label values `var' couple_decisions
          }
*

foreach var of varlist d43a d43b d43c {  
	    label values `var' measure
          }
*


foreach var of varlist e1-e55 {  
	    label values `var' intensity
          }

*


foreach var of varlist f1-f14 {  
	    label values `var' difficulties
          }
*

foreach var of varlist g1-g10 {  
	    label values `var' agreement_4
          }
*

foreach var of varlist g11 g12 g13 {  
	    label values `var' frequency
          }
*

foreach var of varlist h1-h8 {  
	    label values `var' frequency
          }
*

label val h9 yesno_lb
label val h10 

foreach var of varlist h11 h13a h13b h14a h14b h15a h15b h16a h16b {  
	    label values `var' yesno_lb
          }
*

foreach var of varlist i1 i2 i3 i5 i8 i9 {  
	    label values `var' yesno_lb
          }
*

*label val i4 groupes
label val i6 resource_person
label val i7 other_resource

********************** 
*Labeling variables
********************** 

*** Section A
label var a7 "Survey Location"
label var a11 "Province"
label var id_zonesante " Health Zone"
label var id_conseiller "Health Center"
label var langueen "Interview Language"
label var a15 "Had questions"
label var a16 "Has agreed"
label var a17 "Age of the respondent"
label var a18 "Marital status of the respondent"
label var a19 "Her age when moving with current partner"
label var a20 "Has lived with other partners before"
label var a21 "Her age when moving with her first partner"
label var a22 "Reasons for the choice of current partner"
label var a24 "Education level of the respondent"
label var a23 "Her partner has other wives"
label var a26 "Sex of the Head of Household"
label var a27 "Age of the Head of Household"
label var a28 "Link with the Head of Household"
label var a29 "Education Level of the Head of Household"

***Section B 
lab var b1 "Number of rooms in the house"
lab var b2 "Location of the kitchen"
lab var b3 "On what are you sleeping ?"
lab var b4 "The roof is made of : "
lab var b5 "The walls are made of :"
lab var b6 "The floor is made of :"
lab var b7 "Source of the water used in the household"
lab var b9 "The housing belongs to the household"
lab var b10 "A member of the household owns a plot"
lab var b11a "Number of matresses owned by the household"
lab var b12a "Number of mattresses owned by the respondent"
lab var b11b "Number of bikes owned by the household"
lab var b12b "Number of bikes owned by the respondent"
lab var b11c "Number of motorcycles owned by the household "
lab var b12c "Number of motorcycles owned by the respondent"
lab var b11d "Number of mobile phones owned in the household"
lab var b12d "Number of mobiles phones owned by the respondent"
lab var b11e "Number of radios owned by the household"
lab var b12e "Number of radios owned by the respondent"
lab var b11f "Number of tv sets owned by the household"
lab var b12f "Number of tv sets owned by the respondent"
lab var b11g "Number of mosquito nets owned by the household"
lab var b12g "Number of mosquito nets owned by the respondent"
lab var b11h "Number of buckets owned by the household"
lab var b12h "Number of buckets owned by the respondent"
lab var b13a "Number of oxen owned by the household"
lab var b14a "Number of oxen owned by the respondent"
lab var b13b "Number of sheep or goats owned by the household"
lab var b14b "Number of sheep or goats owned by the respondent"
lab var b13c "Number of pigs owned by the household"
lab var b14c "Number of pigs owned by the respondent"
lab var b13d "Poultry owned by the household"
lab var b14d "Poultry owned by the respondent"
lab var b13e "Number of rabbits owned by the household"
lab var b14e "Number of rabbits owned by the respondent"
lab var b13f "Number of guinea pigs owned by the household"
lab var b14f "Number of guinea pigs owned by the respondent"
lab var bed_own "She has at least one mattress"
lab var bicycle_own "She has at least one bike"
lab var moto_own " She has at least one motorcycle"
lab var cell_own " She has at least one mobile phone"
lab var radio_own "She has at least one radio"
lab var tele_own " She has at least one tv set"
lab var nets_own "She has at least one mosquito net"
lab var bucket_own "She has at least one bucket"

lab var asset_index_hh "Household Possession Score (sum)" 
lab var asset_index_hh_pca "Household Possession Score (pca)" 

lab var asset_index_rr "Respondent Possession Score (sum)" 
lab var asset_index_rr_pca "Respondent Possession Score (pca)"

label var ownership_index_rr "Respondent Possession Score II (pca)"

label var cow_own1 "She has at least one ox"
label var sheep_own1 "She has at least one sheep or goat"
label var pig_own1 "She has at least one pig"
label var poultry_own1 "She has at least one poultry head"
label var rabbit_own1 "She has at least one rabbit"
label var guineapig_own1 "She has at least one guinea pig"

label var livestock_hh "Livestock ownership index of the household(sum)" 
label var livestock_hh_pca "Livestock ownership index of the household(pca)" 

label var livestock_rr "Livestock ownership index of the Respondent (sum)" 
label var livestock_rr_pca "Livestock ownership index of the Respondent (pca)" 

label var livestock_rr_pca_2 "Livestock ownership index of the Respondent II (pca)"

label var saving "She has saved money in the last 12 months"
lab var non_inst_saving "Amount saved in USD (non institutional)"
lab var inst_saving " Amount saved in USD (institutional) "
lab var perso_saving "Amount saved in USD (personal)"
lab var total_saving "Total amount saved by the respondent in USD"

*** SECTION C
lab var c1 "Can hit his wife if she neglects the children"
lab var c2 "Can hit his wife if she burns the food"
lab var c3 "Ideal path for girls"
lab var c4 "Ideal path for boys"
lab var c5 "Partner participates in the kitchen"
lab var c6 "Partner participates in cleaning the house or doing the laundry"
lab var c7 "Partner takes care of children"

*** Section D
lab var in_school "She is currently in school"
label var worked_7d "Worked in the last 7 days"
label var worked_6m "Worked in the last 6 months"
label var labforce_7d "Worked during the last 7 or on their plot"
label var totalwd_main_6m "Number of days devoted to Principal Activity during the last 6 months"
label var totalwd_main_6m_imp "Estimated number of days devoted to Principal Activity during the last 6 months"
label var worked_hours_7d_main "Number of hours dedicated to Principal Activity during a typical week"
la var worked_hours_7d_main_imp "Estimated hours devoted to Principal Activity during a typical week"
label var off_farm_main "Has a non-agricultural Principal Activity" 
label var self_emp_main "Self-employment as main activity"
label var wage_emp_main "Has a salaried principal activity"
label val family_emp_main yesno_lb
label var family_emp_main "Has a family work as principal activity"
label var earnings_main_7d "Revenue in USD generated by the PA during the last 7 days"
label var earnings_main_1m "Revenue in USD generated by the PA during the last 30 days"
label var sec_act "Has a secondary activity"
label val sec_act yesno_lb
label var off_farm_sec "Has a non-agricultural Secondary Activity"
label val off_farm_sec yesno_lb
lab var totalwd_sec_6m "Number of days spent on SA in the last 6 months"
lab var totalwd_sec_6m_imp "Estimate of days devoted to SA in the last 6 months"
lab var worked_hours_7d_sec "Number of hours spent on SA during a typical week"
lab var worked_hours_7d_sec_imp "Estimated hours spent on SA during a typical week"
label variable self_emp_sec "Self-employment as a secondary activity"
label val self_emp_sec yesno_lb
label var wage_emp_sec "Has a salaried secondary activity"
label val wage_emp_sec yesno_lb
lab var earnings_sec_7d "USD revenue generated by the Secondary Activity during the last 7 days"
lab var earnings_sec_1m "Income in USD generated by the SA over the last 30 days"
lab var earnings_tot_7d "Revenue in USD generated by the respondent's activities during the last 7 days"
lab var earnings_tot_1m "Revenue in USD generated by the respondent's activities during the last 30 days"
label var index_farm_pp1 "Decision score for inputs and crops"
label var index_farm_pp2 "Decision score for the harvest and its use"
label var d42a " Consideration of her opinion regarding the money that she earns"
label var d43a "Perception of decision-making: the money she earns"
label var d42b " Consideration of her opinion: pregnancy"
lab var d43b "Perception of the consideration of the respondent's opinion without another opinion concerning pregnancies"
lab var d42c "Consideration of her opinion: health care"
lab var d43c "Perception of consideration of her opinion: health care"
lab var d42d "Consideration of her opinion on the education of children"
lab var d42e "Consideration of her opinion: how the money of the household is spent"
lab var d42f "Consideration of her opinion concerning major purchases"
lab var d42g "Consideration of her opinion on her visits to her family"
lab var power_index "Decision-making power of the Respondent within the household"
lab var perceptionpower_index "Respondent's Power Perception Index"
lab var decision_ownincome_1 "Totally involved in the decisions about the money she earns" 
lab val decision_ownincome_1 yesno_lb
label var decision_ownincome_2 "Involved in decisions about the money she earns" 
lab val decision_ownincome_2 yesno_lb
label var decision_pregnancy "Totally involved in pregnancy decisions"
lab val decision_pregnancy yesno_lb
lab var decision_health "Totally involved in healthcare decisions"
lab val decision_health yesno_lb
label var share_cook "The partner participates in the kitchen"
label val share_cook yesno_lb
label var share_laundry "Partner participates in laundry / cleaning"
label val share_laundry yesno_lb
label var share_children "The partner helps to take care of the children"
label val share_children yesno_lb
label var sharing_index "Index of task sharing with partner" 	  

***
label var ha_respondent "The survey takes place at Heal Africa"
label val ha_respondent yesno_lb

label var marital_status_w "Marital status of the respondent"
label drop mar_status
label define mar_status 1 "Married" 2 "Divorced / separated" 3 "Widowed" 4 "Single"
label val marital_status_w mar_status

label var married_vs "Is married"
label val married_vs yesno_lb

label var reason_for_marriage_w "Reason of the marriage choice"
label drop reason
label define reason 1 "Have chosen each other" 0 "Other reason" 
label val reason_for_marriage_w reason

label var otherspouse "The partner has other spouses"
label val otherspouse yesno_lb

label var age_first_mariage "Age of the repsondent at first marriage"

label var education_rr "The respondent went to school" 
label val education_rr yes_lb

lab var educ_years_rr "Number of years of education of the respondent"

lab var educ_prim_rr "Has a primary education level"
lab var educ_sec_rr "Has a secondary education level"
lab var educ_postsec_rr "Has a post-secondary education level"
lab var educ_univ_rr "Has a university education level"

lab val educ_prim_rr yesno_lb
lab val educ_sec_rr yesno_lb
lab val educ_postsec_rr yesno_lb 
lab val educ_univ_rr yesno_lb

label var hh_education "The head of the household has been to school"
label val hh_education yesno_lb

label var sexhh "The head of the household is a woman"
label val sexhh yesno_lb	

label var agehh "Age of the head of the household"

label var relhh "Relationship with the head of the household "
label drop lrelhh
label define lrelhh 1 "Head of the household / Spouse" 0 "Other relationship" 
label val relhh lrelhh

label var married_once "Has been married once"
label val married_once yesno_lb

label var couple_once "Has been in a relationship once"
label val couple_once yesno_lb

label var hh_size "Size of the household"

lab var hh_size1 "Deducted size of the household"

label var nbr_adults_hh_15 "Number of adults in the household (cut_off=15 years)"
label var nbr_children_hh_15  "Number of children in the household (cut_off=15 years)"
label var nbr_adults_hh_18 " Number of adults in the household (cut_off=18 years old)"
label var nbr_children_hh_18  "Number of children in the household (cut_off=18 years old)"

label var hscl25_index "Score of HSCL-25 score for depression and anxiety combined" 	  

label var probdepression "Has probable depression or anxiety"
label value probdepression yesno_lb

label var anxiety_index "Level of anxiety: score"

label var depression_index "Level of depression: score"

label var pcl_index "PTSD level: Score"

label var probpstd "Probable PTSD"
label value probpstd yesno_lb

label var localfun_index "Score adapted for local operation"

label var self_estem_index "Self-esteem index: mean"

label var self_esteem_pos "Positive self-perception index"

label var self_esteem_neg "Index of negative self-perception"

label var positive_str "Score for use of positive strategies in case of problem"

label var negative_str "Score for use of negative strategies in case of problem"

label var self_esteem_score "Self-esteem perception index"

label var self_esteem_cor "Corrected index of self-esteem perception"

save "$dta/`today'_NET_Baseline_data_indicators_cor.dta", replace

*** Drop some variables
drop submissiondate starttime endtime deviceid subscriberid simid devicephonenum 
drop a1 a2 a7 a7_autre a8a a8b a9 a10 a11 a15 a16 signature enquetrice
drop a26-a42
drop b1-b10
drop b11* b12* *own *own1 b13* b14*
drop b16 b17 b17_autre b19 b20 b20_autre b22 b23 b23_autre c3 c3_autre c4 c4_autre c5-c7
drop b28 b29*
drop d2-d23 d18_autre d20_autre d21_autre d24*
drop d25-d30 d25_autre d27_autre d29_autre
drop d32 d32_autre d33 d34 d35* d36-d41 d36_autre d38_autre d40_autre 
drop d42* d43* e1-e55 f1-f14 g1-g13
drop h1-h9  h1* h2*
drop g_cor*
drop g1_cr g2_cr g3_cr g4_cr g5_cr g6_cr g7_cr g8_cr g9_cr g10_cr
drop i1-i9
drop j1-j3
drop instanceid formdef_version key

** Addin b0 at the end of variables on the baseline 
qui ds
foreach var of varlist `r(varlist)' {
ren `var' `var'_b0 
 }
*

ren id_key_b0 id_key

save "$dta/`today'_NET_Baseline_data_indicators_lb.dta", replace

log close


	




