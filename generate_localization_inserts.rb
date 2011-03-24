keys = IO.readlines('keys.txt','').to_s

locales = %w(ar cs da de el EN es es_MX et fi fr fr_CA hu in is it ja ko lt lv ms nb nl pl pt_BR ru sk sv th tr uk vi zh_CN zh_TW)

keys_in_loc = ""

locales.each do |loc|
	keys_in_loc << keys.gsub(/^(.*)$/) do |m|
		"if not exists (select keyName from I18N_TRANSLATION where keyName = '#{m}' and locale='#{loc}') begin insert into I18N_TRANSLATION (keyName, locale, comment, value, CreatedTimestamp) values ('#{m}', '#{loc}', null, null, GETDATE()) end;"
	end
keys_in_loc << "\n\n"
end

File.open('out.txt', 'w') {|f| f.write(keys_in_loc) }
