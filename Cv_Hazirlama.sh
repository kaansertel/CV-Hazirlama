#!/bin/sh

zenity --info --width=350 --height=120 \
	--title="Hoş geldiniz"\
	--text="CV Hazırlama Programına Hoş Geldiniz."


zenity --text-info \
       --title="License" \
       --filename="/home/kaansertel/Desktop/Cv_Hazirlama/License.txt" \
       --checkbox="I read and accept the terms."

VERILER=$(zenity --forms --title="CV Hazırlama" \
	--text="Bilgilerinizi giriniz" \
	--separator=";" \
	--add-entry="Profil Resmi" \
	--add-entry="Ad" \
        --add-entry="Soyad" \
	--add-entry="Bölüm" \
	--add-entry="Şehir" \
	--add-entry="Email" \
	--add-entry="Telefon" \
	--add-entry="Github" \
	--add-entry="Linkedin"\
	--add-calendar="Cv Oluşturulma Tarihi")


AltBolumRenk=$(zenity --color-selection --title="Alt Bölüm için Renk Seçiniz" --show-palette)


DENEYIM=$(zenity --text-info \
       --title="Deneyimlerim" \
       --editable\
       --checkbox="Deneyimlerimi yazdım ve devam ediyorum.")

EGITIM=$(zenity --text-info \
       --title="Eğitim Geçmişim" \
       --editable\
       --checkbox="Eğitim geçmişimi yazdım ve devam ediyorum.")


SECIM=$(zenity  --list --text "Hangi Tasarımı Seçmek İstersiniz?" --radiolist  --column "Seçim" --column "Tasarım" TRUE Amazing FALSE Average);

personal=($(echo $VERILER | tr ";" "\n"))


if  [ $SECIM == "Amazing" ]
then
	(
	echo '<!DOCTYPE html>
<html>
<title>My CV</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

html,body,h1,h2,h3,h4,h5,h6 {font-family: Arial, Helvetica, sans-serif;}

.altbolum {
  padding: 20px;
  text-align: center;
  background: '$AltBolumRenk';
}

</style>

<body class="w3-light-grey">
<div class="w3-content w3-margin-top" style="max-width:1400px;">
  <div class="w3-row-padding">
    <div class="w3-third">
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="'${personal[0]}'" style="width:100%" alt="Avatar">
          <div class="w3-display-bottomleft w3-container w3-text-black">
          </div>
          <div style="background-color: rgb(255, 255, 255);">
            <h2 style="color: black; text-align: center;"><b>'${personal[1]}' '${personal[2]}'</b></h2> 
            <p style="color: black; text-align: center;">'${personal[3]}'</p> 
          </div>
        </div>
        <div class="w3-container">
          <hr>
          <h2 style="color: black; text-align: center;"><b>İletişim</b></h2>
          <p style="text-align: center; color: black;"><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${personal[4]}'</b></p>
          <p style="text-align: center; color: black;"><i class="fa fa-calendar-times-o fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${personal[9]}'</b></p>
          <p style="text-align: center; color: black;"><i class="fa fa-mail-forward fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${personal[5]}'</b></p>
          <p style="text-align: center; color: black;"><i class="fa fa-mobile-phone fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${personal[6]}'</b></p>
          <p style="text-align: center;"><a style="text-decoration: none; color: black;" href="'${personal[7]}'"><i class="fa fa-github fa-fw w3-margin-right w3-large w3-text-teal w3-hover-opacity"></i><b>GITHUB</b></a></p>
          <p style="text-align: center;"><a style="text-decoration: none; color: black;" href="'${personal[8]}'"><i class="fa fa-linkedin fa-fw w3-margin-right w3-large w3-text-teal w3-hover-opacity"></i><b>LINKEDIN</b></a></p>
          <br>
          <br>
        </div>
      </div><br>
    </div>
    <div class="w3-twothird">
      <div style="height: 435px;" class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-level-down fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>DENEYİM</h2>
        <div class="w3-container">
         <p>'$DENEYIM'</p>
          <hr>
        </div>
      </div>
      <div style="height: 435px;" class="w3-container w3-card w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-pencil-square fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>EĞİTİM</h2>
        <div class="w3-container">
            <p>'$EGITIM'</p>
            <hr>
        </div>
      </div>
    </div>
  </div>
</div>

<footer class="altbolum">
    <b>© 2022 Tüm Hakları Saklıdır.</b>
</footer>

</body>
</html>
') > Amazing.html
else
	(
	echo '<!DOCTYPE html>
<html>
<title>My CV</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
* {
box-sizing: border-box;
}

html,body,h1,h2,h3,h4,h5,h6 {font-family: Arial, Helvetica, sans-serif;}

.altbolum {
  padding: 20px;
  text-align: center;
  background: '$AltBolumRenk';
}

</style>
<body class="w3-light-grey">
    <div class="w3-content w3-margin-top" style="max-width:1400px;">
      <div  class="w3-row-padding">
        <div class="w3-third">
          <div class="w3-container w3-card w3-white w3-margin-bottom">
            <div class="w3-container">             
            <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-book fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>EĞİTİM</h2>
              <hr>
              <p>'$EGITIM'</p>
              <hr>
              <br>
            </div>
          </div><br>
        </div>

        <div class="w3-third">
          <div  class="w3-container w3-card w3-white w3-margin-bottom">
            <div class="w3-display-container">
                <img src="'${personal[0]}'" style="width:100%; padding: 1px;" alt="Avatar">
                <div class="w3-display-bottomleft w3-container w3-text-black">
                </div>
                <div style="background-color: rgb(255, 255, 255);">
                  <h2 style="color: black; text-align: center;"><b>'${personal[1]}' '${personal[2]}'</b></h2> 
                  <p style="color: black; text-align: center;">'${personal[3]}'</p> 
                </div>
            </div>
          </div>
          <div style="height: 350px;" class="w3-container w3-card w3-white">
            <div class="w3-container"> 
                <h2 style="color: black; text-align: center;"><b>İletişim</b></h2>
                <hr>
                <p style="text-align: center; color: black;"><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${personal[4]}'</b></p>
                <p style="text-align: center; color: black;"><i class="fa fa-calendar-times-o fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${personal[9]}'</b></p>
                <p style="text-align: center; color: black;"><i class="fa fa-mail-forward fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${personal[5]}'</b></p>
                <p style="text-align: center; color: black;"><i class="fa fa-phone-square fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${personal[6]}'</b></p>
                <p style="text-align: center;"><a style="text-decoration: none; color: black;" href="'${personal[7]}'"><i class="fa fa-github fa-fw w3-margin-right w3-large w3-text-teal w3-hover-opacity"></i><b>GITHUB</b></a></p>
                <p style="text-align: center;"><a style="text-decoration: none; color: black;" href="'${personal[8]}'"><i class="fa fa-linkedin fa-fw w3-margin-right w3-large w3-text-teal w3-hover-opacity"></i><b>LINKEDIN</b></a></p>
            </div>
          </div>
        </div>

        <div class="w3-third">
            <div class="w3-container w3-card w3-white w3-margin-bottom">
              <div class="w3-container">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-expand fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>DENEYİM</h2>
                <hr>
                <p>'$DENEYIM'</p>
                <hr>
                <br>
              </div>
            </div><br>
      </div>
    </div>
<br>
    <footer class="altbolum">
        <b>© 2022 Tüm Hakları Saklıdır.</b>
    </footer>

    </body>
    </html>') > Average.html
fi


(
echo "10" ; sleep 1
echo "# Bilgiler okunuyor..." ; sleep 1
echo "20" ; sleep 1
echo "# Bilgiler sisteme işleniyor..." ; sleep 1
echo "50" ; sleep 1
echo "# Son kontroller sağlanıyor..." ; sleep 1
echo "75" ; sleep 1
echo "# Dosya oluşturuluyor..." ; sleep 1
echo "100" ; sleep 1
) |
zenity --progress \
  --title="CV Hazırlanıyor" \
  --text="Bilgiler okunuyor..." \
  --percentage=0


  zenity --notification\
    --window-icon="info" \
    --text="Cv Dosyanız Oluşturuldu."


