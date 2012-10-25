#!/bin/env ruby
# encoding: utf-8

User.create({ username: 'admin', password: 'ayelet' })

[
	["ארצות הברית","US","United States"],
	["קנדה","CA","Canada"],
	["אפגניסטן","AF","Afghanistan"],
	["אלבניה","AL","Albania"],
	["אלג'יר","DZ","Algeria"],
	["סמואה האמריקנית","DS","American Samoa"],
	["אנדורה","AD","Andorra"],
	["אנגולה","AO","Angola"],
	["אנגווילה","AI","Anguilla"],
	["אנטארקטיקה","AQ","Antarctica"],
	["אנטיגואה וברבודה","AG","Antigua and/or Barbuda"],
	["ארגנטינה","AR","Argentina"],
	["ארמניה","AM","Armenia"],
	["ארובה","AW","Aruba"],
	["אוסטרליה","AU","Australia"],
	["אוסטריה","AT","Austria"],
	["אזרבייג'ן","AZ","Azerbaijan"],
	["הבהאמה","BS","Bahamas"],
	["בחריין","BH","Bahrain"],
	["בנגלדש","BD","Bangladesh"],
	["ברבדוס","BB","Barbados"],
	["בלרוס","BY","Belarus"],
	["בלגיה","BE","Belgium"],
	["בליז","BZ","Belize"],
	["בנין","BJ","Benin"],
	["ברמודה","BM","Bermuda"],
	["בהוטן","BT","Bhutan"],
	["בוליביה","BO","Bolivia"],
	["בוסניה והרצגובינה","BA","Bosnia and Herzegovina"],
	["בוטסואנה","BW","Botswana"],
	["בובה","BV","Bouvet Island"],
	["ברזיל","BR","Brazil"],
	["הטריטוריה הבריטית באוקיינוס ההודי","IO","British lndian Ocean Territory"],
	["ברוניי","BN","Brunei Darussalam"],
	["בולגריה","BG","Bulgaria"],
	["בורקינה פאסו","BF","Burkina Faso"],
	["בורונדי","BI","Burundi"],
	["קמבודיה","KH","Cambodia"],
	["קמרון","CM","Cameroon"],
	["כף ורדה","CV","Cape Verde"],
	["איי קיימן","KY","Cayman Islands"],
	["הרפובליקה המרכז-אפריקאית","CF","Central African Republic"],
	["צ'אד","TD","Chad"],
	["צ'ילה","CL","Chile"],
	["סין","CN","China"],
	["קיריטימטי","CX","Christmas Island"],
	["איי קוקוס","CC","Cocos (Keeling) Islands"],
	["קולומביה","CO","Colombia"],
	["קומורו","KM","Comoros"],
	["קונגו","CG","Congo"],
	["איי קוק","CK","Cook Islands"],
	["קוסטה ריקה","CR","Costa Rica"],
	["קרואטיה","HR","Croatia (Hrvatska)"],
	["קובה","CU","Cuba"],
	["קפריסין","CY","Cyprus"],
	["צ'כיה","CZ","Czech Republic"],
	["דנמרק","DK","Denmark"],
	["ג'יבוטי","DJ","Djibouti"],
	["דומיניקה","DM","Dominica"],
	["הרפובליקה הדומיניקנית","DO","Dominican Republic"],
	["מזרח טימור","TP","East Timor"],
	["אקוודור","EC","Ecudaor"],
	["מצרים","EG","Egypt"],
	["אל סלוודור","SV","El Salvador"],
	["גינאה המשוונית","GQ","Equatorial Guinea"],
	["אריטראה","ER","Eritrea"],
	["אסטוניה","EE","Estonia"],
	["אתיופיה","ET","Ethiopia"],
	["איי פוקלנד","FK","Falkland Islands (Malvinas)"],
	["איי פארו","FO","Faroe Islands"],
	["פיג'י","FJ","Fiji"],
	["פינלנד","FI","Finland"],
	["צרפת","FR","France"],
	["צרפת, מטרופוליטן","FX","France, Metropolitan"],
	["גיאנה הצרפתית","GF","French Guiana"],
	["פולינזיה הצרפתית","PF","French Polynesia"],
	["הטריטוריה הצרפתית הדרומית","TF","French Southern Territories"],
	["גבון","GA","Gabon"],
	["גמביה","GM","Gambia"],
	["גאורגיה","GE","Georgia"],
	["גרמניה","DE","Germany"],
	["גאנה","GH","Ghana"],
	["גיברלטר","GI","Gibraltar"],
	["יוון","GR","Greece"],
	["גרינלנד","GL","Greenland"],
	["גרנדה","GD","Grenada"],
	["גוואדלופ","GP","Guadeloupe"],
	["גואם","GU","Guam"],
	["גואטמלה","GT","Guatemala"],
	["גינאה","GN","Guinea"],
	["גינאה ביסאו","GW","Guinea-Bissau"],
	["גיאנה","GY","Guyana"],
	["האיטי","HT","Haiti"],
	["האי הרד ואיי מקדונלד","HM","Heard and Mc Donald Islands"],
	["הונדורס","HN","Honduras"],
	["הונג קונג","HK","Hong Kong"],
	["הונגריה","HU","Hungary"],
	["איסלנד","IS","Iceland"],
	["הודו","IN","India"],
	["אינדונזיה","ID","Indonesia"],
	["איראן","IR","Iran (Islamic Republic of)"],
	["עיראק","IQ","Iraq"],
	["אירלנד","IE","Ireland"],
	["ישראל","IL","Israel"],
	["איטליה","IT","Italy"],
	["חוף השנהב","CI","Ivory Coast"],
	["ג'מייקה","JM","Jamaica"],
	["יפן","JP","Japan"],
	["ירדן","JO","Jordan"],
	["קזחסטן","KZ","Kazakhstan"],
	["קניה","KE","Kenya"],
	["קיריבטי","KI","Kiribati"],
	["קוריאה הצפונית","KP","Korea, Democratic People's Republic of"],
	["קוריאה הדרומית","KR","Korea, Republic of"],
	["כווית","KW","Kuwait"],
	["קירגיזסטן","KG","Kyrgyzstan"],
	["לאוס","LA","Lao People's Democratic Republic"],
	["לטביה","LV","Latvia"],
	["לבנון","LB","Lebanon"],
	["לסוטו","LS","Lesotho"],
	["ליבריה","LR","Liberia"],
	["לוב","LY","Libyan Arab Jamahiriya"],
	["ליכטנשטיין","LI","Liechtenstein"],
	["ליטא","LT","Lithuania"],
	["לוקסמבורג","LU","Luxembourg"],
	["מקאו","MO","Macau"],
	["מקדוניה","MK","Macedonia"],
	["מדגסקר","MG","Madagascar"],
	["מלאווי","MW","Malawi"],
	["מלזיה","MY","Malaysia"],
	["האיים המלדיביים","MV","Maldives"],
	["מאלי","ML","Mali"],
	["מלטה","MT","Malta"],
	["איי מרשל","MH","Marshall Islands"],
	["מרטיניק","MQ","Martinique"],
	["מאוריטניה","MR","Mauritania"],
	["מאוריציוס","MU","Mauritius"],
	["מיוט","TY","Mayotte"],
	["מקסיקו","MX","Mexico"],
	["מיקרונזיה","FM","Micronesia, Federated States of"],
	["מולדובה","MD","Moldova, Republic of"],
	["מונאקו","MC","Monaco"],
	["מונגוליה","MN","Mongolia"],
	["מונטסראט","MS","Montserrat"],
	["מרוקו","MA","Morocco"],
	["מוזמביק","MZ","Mozambique"],
	["מיאנמר","MM","Myanmar"],
	["נמיביה","NA","Namibia"],
	["נאורו","NR","Nauru"],
	["נפאל","NP","Nepal"],
	["הולנד","NL","Netherlands"],
	["האנטילים ההולנדיים","AN","Netherlands Antilles"],
	["קלדוניה החדשה","NC","New Caledonia"],
	["ניו זילנד","NZ","New Zealand"],
	["ניקרגואה","NI","Nicaragua"],
	["ניז'ר","NE","Niger"],
	["ניגריה","NG","Nigeria"],
	["ניואה","NU","Niue"],
	["נורפוק","NF","Norfork Island"],
	["איי מריאנה הצפוניים","MP","Northern Mariana Islands"],
	["נורווגיה","NO","Norway"],
	["עומאן","OM","Oman"],
	["פקיסטן","PK","Pakistan"],
	["פלאו","PW","Palau"],
	["פנמה","PA","Panama"],
	["פפואה גינאה החדשה","PG","Papua New Guinea"],
	["פרגוואי","PY","Paraguay"],
	["פרו","PE","Peru"],
	["הפיליפינים","PH","Philippines"],
	["פיטקרן","PN","Pitcairn"],
	["פולין","PL","Poland"],
	["פורטוגל","PT","Portugal"],
	["פוארטו ריקו","PR","Puerto Rico"],
	["קטאר","QA","Qatar"],
	["ראוניון","RE","Reunion"],
	["רומניה","RO","Romania"],
	["רוסיה","RU","Russian Federation"],
	["רואנדה","RW","Rwanda"],
	["סנט קיטס ונוויס","KN","Saint Kitts and Nevis"],
	["סנט לוסיה","LC","Saint Lucia"],
	["סנט וינסנט והגרנדינים","VC","Saint Vincent and the Grenadines"],
	["סמואה","WS","Samoa"],
	["סן מרינו","SM","San Marino"],
	["סאו טומה ופרינסיפה","ST","Sao Tome and Principe"],
	["ערב הסעודית","SA","Saudi Arabia"],
	["סנגל","SN","Senegal"],
	["סיישל","SC","Seychelles"],
	["סיירה לאונה","SL","Sierra Leone"],
	["סינגפור","SG","Singapore"],
	["סלובקיה","SK","Slovakia"],
	["סלובניה","SI","Slovenia"],
	["איי שלמה","SB","Solomon Islands"],
	["סומליה","SO","Somalia"],
	["דרום אפריקה","ZA","South Africa"],
	["איי ג'ורג'יה הדרומית ואיי סנדוויץ' הדרומיים","GS","South Georgia South Sandwich Islands"],
	["ספרד","ES","Spain"],
	["סרי לנקה","LK","Sri Lanka"],
	["סנט הלנה","SH","St. Helena"],
	["סן פייר ומיקלון","PM","St. Pierre and Miquelon"],
	["סודאן","SD","Sudan"],
	["סורינאם","SR","Suriname"],
	["איי סוולבארד ויאן מאיין","SJ","Svalbarn and Jan Mayen Islands"],
	["סווזילנד","SZ","Swaziland"],
	["שבדיה","SE","Sweden"],
	["שוויץ","CH","Switzerland"],
	["סוריה","SY","Syrian Arab Republic"],
	["טאיוואן","TW","Taiwan"],
	["טג'יקיסטן","TJ","Tajikistan"],
	["טנזניה","TZ","Tanzania, United Republic of"],
	["תאילנד","TH","Thailand"],
	["טוגו","TG","Togo"],
	["טוקלאו","TK","Tokelau"],
	["טונגה","TO","Tonga"],
	["טרינידד וטובגו","TT","Trinidad and Tobago"],
	["תוניס","TN","Tunisia"],
	["טורקיה","TR","Turkey"],
	["טורקמניסטן","TM","Turkmenistan"],
	["איי טרקס וקייקוס","TC","Turks and Caicos Islands"],
	["טובאלו","TV","Tuvalu"],
	["אוגנדה","UG","Uganda"],
	["אוקראינה","UA","Ukraine"],
	["איחוד האמירויות","AE","United Arab Emirates"],
	["אנגליה","GB","United Kingdom"],
	["איי ארצות הברית החיצוניים","UM","United States minor outlying islands"],
	["אורוגוואי","UY","Uruguay"],
	["אוזבקיסטן","UZ","Uzbekistan"],
	["ונואטו","VU","Vanuatu"],
	["הוותיקן","VA","Vatican City State"],
	["ונצואלה","VE","Venezuela"],
	["וייטנאם","VN","Vietnam"],
	["איי הבתולה הבריטיים","VG","Virigan Islands (British)"],
	["איי הבתולה של ארצות הברית","VI","Virgin Islands (U.S.)"],
	["ואליס ופוטונה","WF","Wallis and Futuna Islands"],
	["סהרה המערבית","EH","Western Sahara"],
	["תימן","YE","Yemen"],
	["יוגוסלביה","YU","Yugoslavia"],
	["זאיר","ZR","Zaire"],
	["זמביה","ZM","Zambia"],
	["זימבבואה","ZW","Zimbabwe"]
].each do |record|
	Country.create({ name_heb: record[0], code: record[1], name: record[2]})
end
