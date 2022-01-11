#!/bin/sh

zenity --info --width=300 --height=100 \
	--text="CV Hazırlama Programına Hoş Geldiniz."

ROW=$(zenity --forms --title="CV Hazırlama" \
	--text="Kişisel bilgilerinizi giriniz." \
	--separator=";" \
	--add-entry="Profil Resmi" \
	--add-entry="Ad" \
        --add-entry="Soyad" \
	--add-entry="Bölüm" \
	--add-entry="Şehir" \
	--add-entry="Email" \
	--add-entry="Telefon" \
	--add-entry="Github" \
	--add-entry="Linkedin")

DENEYIM=$(zenity --entry \
	--title="CV Hazırlama" \
	--width=300\
	--text="Deneyimlerinizi Giriniz:" \
	--entry-text "")

EGITIM=$(zenity --entry \
        --title="CV Hazırlama" \
	--width=300 \
        --text="Eğitim Geçmişinizi Giriniz:" \
        --entry-text "")



ans=$(zenity  --list  --text "Hangi Tasarımı Seçmek İstersiniz?" --radiolist  --column "Seçim" --column "Tasarım" TRUE Amazing FALSE Average);

my_arr=($(echo $ROW | tr ";" "\n"))


if  [ $ans == "Amazing" ]
then
	(
	echo '<!DOCTYPE html>

<html>

<title>My CV</title>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}



/* Footer */

.footer {

  padding: 20px;

  text-align: center;

  background: rgb(0, 195, 255);

}



</style>

<body class="w3-light-grey">



<!-- Page Container -->

<div class="w3-content w3-margin-top" style="max-width:1400px;">



  <!-- The Grid -->

  <div class="w3-row-padding">

  

    <!-- Left Column -->

    <div class="w3-third">

    

      <div class="w3-white w3-text-grey w3-card-4">

        <div class="w3-display-container">

          <img src="'${my_arr[0]}'" style="width:100%" alt="Avatar">

          <div class="w3-display-bottomleft w3-container w3-text-black">

          </div>

          <div style="background-color: rgb(255, 255, 255);">

            <h2 style="color: black; text-align: center;"><b>'${my_arr[1]} ${my_arr[2]}'</b></h2> 

            <p style="color: black; text-align: center;">'${my_arr[3]}'</p> 

          </div>

        </div>

        <div class="w3-container">

          <hr>

          <h2 style="color: black; text-align: center;"><b>İletişim</b></h2>

          <p style="text-align: center; color: black;"><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${my_arr[4]}'</b></p>

          <p style="text-align: center; color: black;"><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${my_arr[5]}'</b></p>

          <p style="text-align: center; color: black;"><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i><b>'${my_arr[6]}'</b></p>

          <p style="text-align: center;"><a style="text-decoration: none; color: black;" href="'${my_arr[7]}'"><i class="fa fa-github fa-fw w3-margin-right w3-large w3-text-teal w3-hover-opacity"></i><b>GITHUB</b></a></p>

          <p style="text-align: center;"><a style="text-decoration: none; color: black;" href="'${my_arr[8]}'"><i class="fa fa-linkedin fa-fw w3-margin-right w3-large w3-text-teal w3-hover-opacity"></i><b>LINKEDIN</b></a></p>

          <br>





          <br>

        </div>

      </div><br>



    <!-- End Left Column -->

    </div>



    <!-- Right Column -->

    <div class="w3-twothird">

    

      <div style="height: 435px;" class="w3-container w3-card w3-white w3-margin-bottom">

        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>DENEYİM</h2>

        <div class="w3-container">

         <p>'$DENEYIM'</p>

          <hr>

        </div>

      </div>



      <div style="height: 435px;" class="w3-container w3-card w3-white">

        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>EĞİTİM</h2>

        <div class="w3-container">

            <p>'$EGITIM'</p>

            <hr>

        </div>



      </div>



    <!-- End Right Column -->

    </div>

    

  <!-- End Grid -->

  </div>

  

  <!-- End Page Container -->

</div>



<footer class="footer">

    <b>© 2022 Tüm Hakları Saklıdır.</b>

</footer>



</body>

</html>') > Amazing.html
else
	(
	echo '<!DOCTYPE html>

<html>

<head>

<title>My CV</title>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

* {

  box-sizing: border-box;

}



/* Style the body */

body {

  font-family: Arial, Helvetica, sans-serif;

  margin: 0;

}



/* Column container */

.row {  

  display: -ms-flexbox; /* IE10 */

  display: flex;

  -ms-flex-wrap: wrap; /* IE10 */

  flex-wrap: wrap;

}



/* Create two unequal columns that sits next to each other */

/* Sidebar/left column */

.side {

  -ms-flex: 30%; /* IE10 */

  flex: 30%;

  background-color: #f1f1f1;

  padding: 20px;



}



/* Main column */

.main {   

  -ms-flex: 70%; /* IE10 */

  flex: 70%;

  background-color: white;

  padding: 20px;

}



/* Footer */

.footer {

  padding: 20px;

  text-align: center;

  background: rgb(221, 221, 221);

}



/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */

@media screen and (max-width: 700px) {

  .row {   

    flex-direction: column;

  }

}





.card {

  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);

  transition: 0.3s;

  width: 57%;

  border-radius: 5px;

}



.card:hover {

  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);

}



img {

  border-radius: 5px 5px 0 0;

}



.container {

  padding: 2px 16px;

}

</style>

</head>

<body>



<div class="row">

  <div class="side">

    <h2><b>HAKKIMDA</b></h2>

    <div style="height:400px; text-align: center;" class="card">

        <img src="https://imgyukle.com/f/2022/01/08/oHLiHS.jpg" alt="Avatar" style="width:100%">

        <div style="background-color: white;" class="container">

          <h3><b>'${my_arr[1]} ${my_arr[2]}'</b></h3> 

          <p>'${my_arr[3]}'</p> 

        </div>

      </div>

    <br>

    <h2><b>İletişim</b></h2>

    <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>'${my_arr[4]}'</p>

    <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>'${my_arr[5]}'</p>

    <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>'${my_arr[6]}'</p>

    <p><a style="text-decoration: none;" href="'${my_arr[7]}'"><i class="fa fa-github fa-fw w3-margin-right w3-large w3-text-teal w3-hover-opacity"></i><b>GITHUB</b></a></p>

    <p><a style="text-decoration: none;" href="'${my_arr[8]}'"><i class="fa fa-linkedin fa-fw w3-margin-right w3-large w3-text-teal w3-hover-opacity"></i><b>LINKEDIN</b></a></p>

    <br><br><br><br>

</div>

  <div class="main">

    <h2><b>DENEYİM</b></h2>

    <p>'$DENEYIM'</p>

    <p></p>

    <br>

    <hr>

    <h2><b>EĞİTİM</b></h2>

    <p>'$EGITIM'</p>

    <p></p>

    <hr>

</div>

</div>



<div class="footer">

   <b>© 2022 Tüm Hakları Saklıdır.</b>

</div>



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
