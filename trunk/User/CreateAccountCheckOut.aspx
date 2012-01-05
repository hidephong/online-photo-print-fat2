﻿<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="CreateAccountCheckOut.aspx.cs" Inherits="OrderPhotoPL_Customer_CreateAccountCheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <table>
            <tr>
                <td colspan="3" align="center" style="height: 18px">
                    Create Account Checkout.
                </td>
            </tr>
            <tr>
                <td>Email:
                </td>
                <td style="width: 352px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="308px"></asp:TextBox>
                </td>
                <td  >
                </td>
            </tr>
               <tr>
                <td>Password:
                </td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtPassword" runat="server" Width="308px"></asp:TextBox>
                </td>
                <td >
                </td>
            </tr>
               <tr>
                <td>Retype Password:
                </td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtRetypePass" runat="server" Width="308px"></asp:TextBox>
                </td>
                <td  >
                </td>
            </tr>
            <tr>
                <td>
                    Location:</td>
                <td style="width: 352px">
                   <select id="CountryCode" name="CountryCode" style="width: 313px">
  <option value="AF"
                            
                            >
  Afghanistan (افغانستان)
  </option>
  <option value="AX"
                            
                            >
  Aland Islands
  </option>
  <option value="AL"
                            
                            >
  Albania (Shqipëria)
  </option>
  <option value="DZ"
                            
                            >
  Algeria (الجزائر)
  </option>
  <option value="AS"
                            
                            >
  American Samoa
  </option>
  <option value="AD"
                            
                            >
  Andorra
  </option>
  <option value="AO"
                            
                            >
  Angola
  </option>
  <option value="AI"
                            
                            >
  Anguilla
  </option>
  <option value="AQ"
                            
                            >
  Antarctica
  </option>
  <option value="AG"
                            
                            >
  Antigua and Barbuda
  </option>
  <option value="AR"
                            
                            >
  Argentina
  </option>
  <option value="AM"
                            
                            >
  Armenia (Հայաստան)
  </option>
  <option value="AW"
                            
                            >
  Aruba
  </option>
  <option value="AU"
                            
                            >
  Australia
  </option>
  <option value="AT"
                            
                            >
  Austria (Österreich)
  </option>
  <option value="AZ"
                            
                            >
  Azerbaijan (Azərbaycan)
  </option>
  <option value="BS"
                            
                            >
  Bahamas
  </option>
  <option value="BH"
                            
                            >
  Bahrain (البحرين)
  </option>
  <option value="BD"
                            
                            >
  Bangladesh (বাংলাদেশ)
  </option>
  <option value="BB"
                            
                            >
  Barbados
  </option>
  <option value="BY"
                            
                            >
  Belarus (Белару́сь)
  </option>
  <option value="BE"
                            
                            >
  Belgium (België)
  </option>
  <option value="BZ"
                            
                            >
  Belize
  </option>
  <option value="BJ"
                            
                            >
  Benin (Bénin)
  </option>
  <option value="BM"
                            
                            >
  Bermuda
  </option>
  <option value="BT"
                            
                            >
  Bhutan (འབྲུག་ཡུལ)
  </option>
  <option value="BO"
                            
                            >
  Bolivia
  </option>
  <option value="BA"
                            
                            >
  Bosnia and Herzegovina (Bosna i Hercegovina)
  </option>
  <option value="BW"
                            
                            >
  Botswana
  </option>
  <option value="BV"
                            
                            >
  Bouvet Island
  </option>
  <option value="BR"
                            
                            >
  Brazil (Brasil)
  </option>
  <option value="IO"
                            
                            >
  British Indian Ocean Territory
  </option>
  <option value="BN"
                            
                            >
  Brunei (Brunei Darussalam)
  </option>
  <option value="BG"
                            
                            >
  Bulgaria (България)
  </option>
  <option value="BF"
                            
                            >
  Burkina Faso
  </option>
  <option value="BI"
                            
                            >
  Burundi (Uburundi)
  </option>
  <option value="KH"
                            
                            >
  Cambodia (Kampuchea)
  </option>
  <option value="CM"
                            
                            >
  Cameroon (Cameroun)
  </option>
  <option value="CA"
                            
                            >
  Canada
  </option>
  <option value="CV"
                            
                            >
  Cape Verde (Cabo Verde)
  </option>
  <option value="KY"
                            
                            >
  Cayman Islands
  </option>
  <option value="CF"
                            
                            >
  Central African Republic (République Centrafricaine)
  </option>
  <option value="TD"
                            
                            >
  Chad (Tchad)
  </option>
  <option value="CL"
                            
                            >
  Chile
  </option>
  <option value="CN"
                            
                            >
  China (中国)
  </option>
  <option value="CX"
                            
                            >
  Christmas Island
  </option>
  <option value="CC"
                            
                            >
  Cocos Islands
  </option>
  <option value="CO"
                            
                            >
  Colombia
  </option>
  <option value="KM"
                            
                            >
  Comoros (Comores)
  </option>
  <option value="CG"
                            
                            >
  Congo
  </option>
  <option value="CD"
                            
                            >
  Congo, Democratic Republic of the
  </option>
  <option value="CK"
                            
                            >
  Cook Islands
  </option>
  <option value="CR"
                            
                            >
  Costa Rica
  </option>
  <option value="CI"
                            
                            >
  Côte d&#39;Ivoire
  </option>
  <option value="HR"
                            
                            >
  Croatia (Hrvatska)
  </option>
  <option value="CU"
                            
                            >
  Cuba
  </option>
  <option value="CY"
                            
                            >
  Cyprus (Κυπρος)
  </option>
  <option value="CZ"
                            
                            >
  Czech Republic (Česko)
  </option>
  <option value="DK"
                            
                            >
  Denmark (Danmark)
  </option>
  <option value="DJ"
                            
                            >
  Djibouti
  </option>
  <option value="DM"
                            
                            >
  Dominica
  </option>
  <option value="DO"
                            
                            >
  Dominican Republic
  </option>
  <option value="EC"
                            
                            >
  Ecuador
  </option>
  <option value="EG"
                            
                            >
  Egypt (مصر)
  </option>
  <option value="SV"
                            
                            >
  El Salvador
  </option>
  <option value="GQ"
                            
                            >
  Equatorial Guinea (Guinea Ecuatorial)
  </option>
  <option value="ER"
                            
                            >
  Eritrea (Ertra)
  </option>
  <option value="EE"
                            
                            >
  Estonia (Eesti)
  </option>
  <option value="ET"
                            
                            >
  Ethiopia (Ityop&#39;iya)
  </option>
  <option value="FK"
                            
                            >
  Falkland Islands
  </option>
  <option value="FO"
                            
                            >
  Faroe Islands
  </option>
  <option value="FJ"
                            
                            >
  Fiji
  </option>
  <option value="FI"
                            
                            >
  Finland (Suomi)
  </option>
  <option value="FR"
                            
                            >
  France
  </option>
  <option value="GF"
                            
                            >
  French Guiana
  </option>
  <option value="PF"
                            
                            >
  French Polynesia
  </option>
  <option value="TF"
                            
                            >
  French Southern Territories
  </option>
  <option value="GA"
                            
                            >
  Gabon
  </option>
  <option value="GM"
                            
                            >
  Gambia
  </option>
  <option value="GE"
                            
                            >
  Georgia (საქართველო)
  </option>
  <option value="DE"
                            
                            >
  Germany (Deutschland)
  </option>
  <option value="GH"
                            
                            >
  Ghana
  </option>
  <option value="GI"
                            
                            >
  Gibraltar
  </option>
  <option value="GR"
                            
                            >
  Greece (Ελλάς)
  </option>
  <option value="GL"
                            
                            >
  Greenland
  </option>
  <option value="GD"
                            
                            >
  Grenada
  </option>
  <option value="GP"
                            
                            >
  Guadeloupe
  </option>
  <option value="GU"
                            
                            >
  Guam
  </option>
  <option value="GT"
                            
                            >
  Guatemala
  </option>
  <option value="GG"
                            
                            >
  Guernsey
  </option>
  <option value="GN"
                            
                            >
  Guinea (Guinée)
  </option>
  <option value="GW"
                            
                            >
  Guinea-Bissau (Guiné-Bissau)
  </option>
  <option value="GY"
                            
                            >
  Guyana
  </option>
  <option value="HT"
                            
                            >
  Haiti (Haïti)
  </option>
  <option value="HM"
                            
                            >
  Heard Island and McDonald Islands
  </option>
  <option value="HN"
                            
                            >
  Honduras
  </option>
  <option value="HK"
                            
                            >
  Hong Kong
  </option>
  <option value="HU"
                            
                            >
  Hungary (Magyarország)
  </option>
  <option value="IS"
                            
                            >
  Iceland (Ísland)
  </option>
  <option value="IN"
                            
                            >
  India
  </option>
  <option value="ID"
                            
                            >
  Indonesia
  </option>
  <option value="IR"
                            
                            >
  Iran (ایران)
  </option>
  <option value="IQ"
                            
                            >
  Iraq (العراق)
  </option>
  <option value="IE"
                            
                            >
  Ireland
  </option>
  <option value="IM"
                            
                            >
  Isle of Man
  </option>
  <option value="IL"
                            
                            >
  Israel (ישראל)
  </option>
  <option value="IT"
                            
                            >
  Italy (Italia)
  </option>
  <option value="JM"
                            
                            >
  Jamaica
  </option>
  <option value="JP"
                            
                            >
  Japan (日本)
  </option>
  <option value="JE"
                            
                            >
  Jersey
  </option>
  <option value="JO"
                            
                            >
  Jordan (الاردن)
  </option>
  <option value="KZ"
                            
                            >
  Kazakhstan (Қазақстан)
  </option>
  <option value="KE"
                            
                            >
  Kenya
  </option>
  <option value="KI"
                            
                            >
  Kiribati
  </option>
  <option value="KW"
                            
                            >
  Kuwait (الكويت)
  </option>
  <option value="KG"
                            
                            >
  Kyrgyzstan (Кыргызстан)
  </option>
  <option value="LA"
                            
                            >
  Laos (ນລາວ)
  </option>
  <option value="LV"
                            
                            >
  Latvia (Latvija)
  </option>
  <option value="LB"
                            
                            >
  Lebanon (لبنان)
  </option>
  <option value="LS"
                            
                            >
  Lesotho
  </option>
  <option value="LR"
                            
                            >
  Liberia
  </option>
  <option value="LY"
                            
                            >
  Libya (ليبيا)
  </option>
  <option value="LI"
                            
                            >
  Liechtenstein
  </option>
  <option value="LT"
                            
                            >
  Lithuania (Lietuva)
  </option>
  <option value="LU"
                            
                            >
  Luxembourg (Lëtzebuerg)
  </option>
  <option value="MO"
                            
                            >
  Macao
  </option>
  <option value="MK"
                            
                            >
  Macedonia (Македонија)
  </option>
  <option value="MG"
                            
                            >
  Madagascar (Madagasikara)
  </option>
  <option value="MW"
                            
                            >
  Malawi
  </option>
  <option value="MY"
                            
                            >
  Malaysia
  </option>
  <option value="MV"
                            
                            >
  Maldives (ގުޖޭއްރާ ޔާއްރިހޫމްޖ)
  </option>
  <option value="ML"
                            
                            >
  Mali
  </option>
  <option value="MT"
                            
                            >
  Malta
  </option>
  <option value="MH"
                            
                            >
  Marshall Islands
  </option>
  <option value="MQ"
                            
                            >
  Martinique
  </option>
  <option value="MR"
                            
                            >
  Mauritania (موريتانيا)
  </option>
  <option value="MU"
                            
                            >
  Mauritius
  </option>
  <option value="YT"
                            
                            >
  Mayotte
  </option>
  <option value="MX"
                            
                            >
  Mexico (México)
  </option>
  <option value="FM"
                            
                            >
  Micronesia
  </option>
  <option value="MD"
                            
                            >
  Moldova
  </option>
  <option value="MC"
                            
                            >
  Monaco
  </option>
  <option value="MN"
                            
                            >
  Mongolia (Монгол Улс)
  </option>
  <option value="ME"
                            
                            >
  Montenegro (Црна Гора)
  </option>
  <option value="MS"
                            
                            >
  Montserrat
  </option>
  <option value="MA"
                            
                            >
  Morocco (المغرب)
  </option>
  <option value="MZ"
                            
                            >
  Mozambique (Moçambique)
  </option>
  <option value="MM"
                            
                            >
  Myanmar (Burma)
  </option>
  <option value="NA"
                            
                            >
  Namibia
  </option>
  <option value="NR"
                            
                            >
  Nauru (Naoero)
  </option>
  <option value="NP"
                            
                            >
  Nepal (नेपाल)
  </option>
  <option value="NL"
                            
                            >
  Netherlands (Nederland)
  </option>
  <option value="AN"
                            
                            >
  Netherlands Antilles
  </option>
  <option value="NC"
                            
                            >
  New Caledonia
  </option>
  <option value="NZ"
                            
                            >
  New Zealand
  </option>
  <option value="NI"
                            
                            >
  Nicaragua
  </option>
  <option value="NE"
                            
                            >
  Niger
  </option>
  <option value="NG"
                            
                            >
  Nigeria
  </option>
  <option value="NU"
                            
                            >
  Niue
  </option>
  <option value="NF"
                            
                            >
  Norfolk Island
  </option>
  <option value="MP"
                            
                            >
  Northern Mariana Islands
  </option>
  <option value="KP"
                            
                            >
  North Korea (조선)
  </option>
  <option value="NO"
                            
                            >
  Norway (Norge)
  </option>
  <option value="OM"
                            
                            >
  Oman (عمان)
  </option>
  <option value="PK"
                            
                            >
  Pakistan (پاکستان)
  </option>
  <option value="PW"
                            
                            >
  Palau (Belau)
  </option>
  <option value="PS"
                            
                            >
  Palestinian Territories
  </option>
  <option value="PA"
                            
                            >
  Panama (Panamá)
  </option>
  <option value="PG"
                            
                            >
  Papua New Guinea
  </option>
  <option value="PY"
                            
                            >
  Paraguay
  </option>
  <option value="PE"
                            
                            >
  Peru (Perú)
  </option>
  <option value="PH"
                            
                            >
  Philippines (Pilipinas)
  </option>
  <option value="PN"
                            
                            >
  Pitcairn
  </option>
  <option value="PL"
                            
                            >
  Poland (Polska)
  </option>
  <option value="PT"
                            
                            >
  Portugal
  </option>
  <option value="PR"
                            
                            >
  Puerto Rico
  </option>
  <option value="QA"
                            
                            >
  Qatar (قطر)
  </option>
  <option value="RE"
                            
                            >
  Reunion
  </option>
  <option value="RO"
                            
                            >
  Romania (România)
  </option>
  <option value="RU"
                            
                            >
  Russia (Россия)
  </option>
  <option value="RW"
                            
                            >
  Rwanda
  </option>
  <option value="SH"
                            
                            >
  Saint Helena
  </option>
  <option value="KN"
                            
                            >
  Saint Kitts and Nevis
  </option>
  <option value="LC"
                            
                            >
  Saint Lucia
  </option>
  <option value="PM"
                            
                            >
  Saint Pierre and Miquelon
  </option>
  <option value="VC"
                            
                            >
  Saint Vincent and the Grenadines
  </option>
  <option value="WS"
                            
                            >
  Samoa
  </option>
  <option value="SM"
                            
                            >
  San Marino
  </option>
  <option value="ST"
                            
                            >
  São Tomé and Príncipe
  </option>
  <option value="SA"
                            
                            >
  Saudi Arabia (المملكة العربية السعودية)
  </option>
  <option value="SN"
                            
                            >
  Senegal (Sénégal)
  </option>
  <option value="RS"
                            
                            >
  Serbia (Србија)
  </option>
  <option value="CS"
                            
                            >
  Serbia and Montenegro (Србија и Црна Гора)
  </option>
  <option value="SC"
                            
                            >
  Seychelles
  </option>
  <option value="SL"
                            
                            >
  Sierra Leone
  </option>
  <option value="SG"
                            
                            >
  Singapore (Singapura)
  </option>
  <option value="SK"
                            
                            >
  Slovakia (Slovensko)
  </option>
  <option value="SI"
                            
                            >
  Slovenia (Slovenija)
  </option>
  <option value="SB"
                            
                            >
  Solomon Islands
  </option>
  <option value="SO"
                            
                            >
  Somalia (Soomaaliya)
  </option>
  <option value="ZA"
                            
                            >
  South Africa
  </option>
  <option value="GS"
                            
                            >
  South Georgia and the South Sandwich Islands
  </option>
  <option value="KR"
                            
                            >
  South Korea (한국)
  </option>
  <option value="ES"
                            
                            >
  Spain (España)
  </option>
  <option value="LK"
                            
                            >
  Sri Lanka
  </option>
  <option value="SD"
                            
                            >
  Sudan (السودان)
  </option>
  <option value="SR"
                            
                            >
  Suriname
  </option>
  <option value="SJ"
                            
                            >
  Svalbard and Jan Mayen
  </option>
  <option value="SZ"
                            
                            >
  Swaziland
  </option>
  <option value="SE"
                            
                            >
  Sweden (Sverige)
  </option>
  <option value="CH"
                            
                            >
  Switzerland (Schweiz)
  </option>
  <option value="SY"
                            
                            >
  Syria (سوريا)
  </option>
  <option value="TW"
                            
                            >
  Taiwan (台灣)
  </option>
  <option value="TJ"
                            
                            >
  Tajikistan (Тоҷикистон)
  </option>
  <option value="TZ"
                            
                            >
  Tanzania
  </option>
  <option value="TH"
                            
                            >
  Thailand (ราชอาณาจักรไทย)
  </option>
  <option value="TL"
                            
                            >
  Timor-Leste
  </option>
  <option value="TG"
                            
                            >
  Togo
  </option>
  <option value="TK"
                            
                            >
  Tokelau
  </option>
  <option value="TO"
                            
                            >
  Tonga
  </option>
  <option value="TT"
                            
                            >
  Trinidad and Tobago
  </option>
  <option value="TN"
                            
                            >
  Tunisia (تونس)
  </option>
  <option value="TR"
                            
                            >
  Turkey (Türkiye)
  </option>
  <option value="TM"
                            
                            >
  Turkmenistan (Türkmenistan)
  </option>
  <option value="TC"
                            
                            >
  Turks and Caicos Islands
  </option>
  <option value="TV"
                            
                            >
  Tuvalu
  </option>
  <option value="UG"
                            
                            >
  Uganda
  </option>
  <option value="UA"
                            
                            >
  Ukraine (Україна)
  </option>
  <option value="AE"
                            
                            >
  United Arab Emirates (الإمارات العربيّة المتّحدة)
  </option>
  <option value="GB"
                            
                            >
  United Kingdom
  </option>
  <option value="US"
                            
                            >
  United States
  </option>
  <option value="UM"
                            
                            >
  United States minor outlying islands
  </option>
  <option value="UY"
                            
                            >
  Uruguay
  </option>
  <option value="UZ"
                            
                            >
  Uzbekistan (O&#39;zbekiston)
  </option>
  <option value="VU"
                            
                            >
  Vanuatu
  </option>
  <option value="VA"
                            
                            >
  Vatican City (Città del Vaticano)
  </option>
  <option value="VE"
                            
                            >
  Venezuela
  </option>
  <option value="VN"
                            
                            
                            >
  Vietnam (Việt Nam)
  </option>
  <option value="VG"
                            
                            >
  Virgin Islands, British
  </option>
  <option value="VI"
                            
                            >
  Virgin Islands, U.S.
  </option>
  <option value="WF"
                            
                            >
  Wallis and Futuna
  </option>
  <option value="EH"
                            
                            >
  Western Sahara (الصحراء الغربية)
  </option>
  <option value="YE"
                            
                            >
  Yemen (اليمن)
  </option>
  <option value="ZM"
                            
                            >
  Zambia
  </option>
  <option value="ZW"
                            
                            >
  Zimbabwe
  </option>
  </select></td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Card number:</td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtCardNumber" runat="server" Width="308px"></asp:TextBox></td>
                <td >
                    <asp:Image ID="Image1" runat="server" ImageUrl="Images/icons/card.PNG" /></td>
            </tr>
            <tr>
                <td>
                    Expiration Date:</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" Width="30px">mm</asp:TextBox>/<asp:TextBox ID="TextBox4"
                        runat="server" Width="37px">yyyy</asp:TextBox>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    
                   
                    CVC:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    Cardholder
                    Name:</td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtCardHolderName" runat="server" Width="308px"></asp:TextBox></td>
                <td >
                </td>
            </tr>
            <tr>
                <td>
                    Billing
                    Address:</td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtBillingAddress1" runat="server" Width="308px"></asp:TextBox></td>
                <td >
                </td>
            </tr>
            <tr>
                <td style="height: 21px">
                </td>
                <td style="width: 352px">
                    <asp:TextBox ID="txtBillingAddress2" runat="server" Width="308px"></asp:TextBox></td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    City/town:</td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtCity" runat="server" Width="308px"></asp:TextBox></td>
                <td >
                </td>
            </tr>
            <tr>
                <td>
                    State/Provider:</td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtState" runat="server" Width="308px"></asp:TextBox></td>
                <td >
                </td>
            </tr>
            <tr>
                <td>
                    ZIP</td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtZip" runat="server" Width="308px"></asp:TextBox></td>
                <td >
                </td>
            </tr>
            <tr>
                <td>
                    Phone number:</td>
                <td style="width: 352px" >
                    <asp:TextBox ID="txtPhoneNumber" runat="server" Width="308px"></asp:TextBox><br />
                    Required for account verification</td>
                <td >
                </td>
            </tr>
            <tr>
                <td>
                    My shiping address is&nbsp;
                </td>
                <td style="width: 352px" >
                    <asp:RadioButton ID="rbMyBilling" runat="server" Text="My billing address" Checked="True" /><br />
                    <asp:RadioButton ID="rbADiffirent" runat="server"  Text="A diffirent address" /></td>
                <td >
                </td>
            </tr>
            <tr>
                <td style="height: 18px" colspan="3">
                    Terms of service:<br />
                    <asp:TextBox ID="txtTermsOfService" runat="server" Height="152px" TextMode="MultiLine" Width="500px" ReadOnly="True"></asp:TextBox><br />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="width: 352px" >
                    <asp:Button ID="Button1" runat="server" Text="I Agree and Create Account " OnClick="Button1_Click" /></td>
                <td >
                </td>
            </tr>
        </table>
    
    </div>
 
</asp:Content>
