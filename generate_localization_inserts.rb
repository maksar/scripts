#!/usr/bin/env ruby

locales = %w(ar cs da de el EN es es_MX et fi fr fr_CA hu in is it ja ko lt lv ms nb nl pl pt_BR ru sk sv th tr uk vi zh_CN zh_TW)

keys_in_loc = ""

locales.each do |loc|
keys_in_loc <<		"union select t1.* from I18N_TRANSLATION as t1 left join I18N_TRANSLATION as t2 on t1.keyName=t2.keyName and t2.locale = '#{loc}' where t1.locale='en' and t2.value is null and t1.comment like 'CP;%' "
keys_in_loc << "\n\n"
end

File.open('out.txt', 'w') {|f| f.write(keys_in_loc) }
