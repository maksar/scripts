-- Generating report
select 
tab.keyName, 
tab.comment,
tab.value as en, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='ar') as ar, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='cs') as cs, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='da') as da, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='de') as de, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='el') as el, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='es') as es, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='es_MX') as es_MX, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='et') as et, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='fi') as fi, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='fr') as fr, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='fr_CA') as fr_CA, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='hu') as hu, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='in') as 'in', 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='is') as 'is', 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='it') as it, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='ja') as ja, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='ko') as ko, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='lt') as lt, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='lv') as lv, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='ms') as ms, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='nb') as nb, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='nl') as nl, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='pl') as pl, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='pt_BR') as pt_BR, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='ru') as ru, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='sk') as sk, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='sv') as sv, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='th') as th,
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='tr') as tr, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='uk') as uk, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='vi') as vi, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='zh_CN') as zh_CN, 
(select value from I18N_TRANSLATION where keyName=tab.keyName and locale='zh_TW') as zh_TW
from I18N_TRANSLATION as tab where locale='en' and comment like 'CP;%';


-- Missing translations 
      select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ar' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%' 
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ar' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'cs' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'da' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'de' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'el' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'es' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'es_MX' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'et' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'fi' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'fr' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'fr_CA' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'hu' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'in' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'is' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'it' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ja' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ko' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'lt' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'lv' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ms' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'nb' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'nl' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'pl' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'pt_BR' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ru' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'sk' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'sv' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'th' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'tr' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'uk' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'vi' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'zh_CN' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'zh_TW' where t1.locale='en' and t2.value is null and t1.comment like 'TEMPL;%'

      select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'de' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%' 
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'es' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'fr' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'it' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ja' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ko' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'pt_BR' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'ru' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'zh_CN' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'
union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = 'zh_TW' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%'

