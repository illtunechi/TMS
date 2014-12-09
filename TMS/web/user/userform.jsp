<%-- 
    Document   : insertForm
    Created on : Oct 27, 2014, 10:28:53 PM
    Author     : user
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page autoFlush="true" buffer="1094kb"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Insert Course Form</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/half-slider.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
    </script>
  </head>
    
  <body>
      
<form name="form1" method="post" action="insertmanage.jsp">
          <table width="291" border="5" cellspacing="5" cellpadding="5">
           
             <tr>
              <th scope="row"><div align="left"></div></th>
              <td align="center">Course Application</td>
            </tr> 
              
              <tr>
              <th width="67" scope="row"><div align="left">Course Code :</div></th>
              <td width="175"><label>
                <input type="text" name="coursecode" id="coursecode">
              </label></td>
            </tr>
            <tr>
              <th width="67" scope="row"><div align="left">Course Name</div></th>
              <td width="175"><label>
                <input type="text" name="coursename" id="coursename">
              </label></td>
            </tr>
            <tr>
              <th scope="row"><div align="left">Date Start</div></th>
              <td><label>
                <input type="text" name="datestart" id="datestart">
              </label></td>
            </tr>
            <tr>
              <th scope="row"><div align="left">Date End</div></th>
              <td><label>
                <input type="text" name="dateend" id="dateend">
              </label></td>
            </tr>
            
            
            <tr>
              <th scope="row"><div align="left"></div></th>
              <td align="center">Personal Information</td>
            </tr>
         
       
            <tr>
              <th width="67" scope="row"><div align="left">Staff ID :</div></th>
              <td width="175"><label>
                <input type="text" name="staffID" id="staffID">
              </label></td>
            </tr>
            
             <tr>
              <th scope="row"><div align="left">Name</div></th>
              <td><label>
                <input type="text" name="name" id="name">
              </label></td>
            </tr>
            
            <tr>
              <th width="67" scope="row"><div align="left">Identity Card Number</div></th>
              <td width="175"><label>
                <input type="text" name="ic" id="ic">
              </label></td>
            </tr>
           
            <tr>
              <th scope="row"><div align="left">Address</div></th>
              <td><label>
                <input type="text" name="address" id="address">
              </label></td>
            </tr>
           
            <tr>
              <th scope="row"><div align="left">No Telephone</div></th>
              <td><label>
                <input type="text" name="phone" id="phone">
              </label></td>
            </tr>
            
              <tr>
              <th scope="row"><div align="left">Email</div></th>
              <td><label>
                <input type="text" name="email" id="email">
              </label></td>
            </tr>
            
     
            <tr>
              <th scope="row"><div align="left">Faculty</div></th>
              <td><select size="1" name="fakulti">
					<option></option>
					
						<option value="ABahasa">Akademi Bahasa (ABahasa)</option>
					
						<option value="ATMA">Akademi Tentera Malaysia (ATMA)</option>
					
						<option value="BIP">Biro Inovasi Dan Perundingan (BIP)</option>
					
						<option value="BATC">Business Advanced Technology Centre (BATC)</option>
					
						<option value="TLDM">Fak. Pengurusan &amp; Pembangunan Sumb. Manusia (TLDM)</option>
					
						<option value="FAB">Fakulti Alam Bina (FAB)</option>
					
						<option value="FBME">Fakulti Biosains Dan Kejuruteraan Perubatan (FBME)</option>
					
						<option value="FBB">Fakulti Biosains dan Biokejuruteraan (FBB)</option>
					
						<option value="FGHT">Fakulti Geoinformasi dan Harta Tanah (FGHT)</option>
					
						<option value="FKA">Fakulti Kejuruteraan Awam (FKA)</option>
					
						<option value="FKBSK">Fakulti Kejuruteraan Bioperubatan &amp; Sains Kesihatan (FKBSK)</option>
					
						<option value="FKE">Fakulti Kejuruteraan Elektrik (FKE)</option>
					
						<option value="FKK">Fakulti Kejuruteraan Kimia (FKK)</option>
					
						<option value="FKKKSA">Fakulti Kejuruteraan Kimia dan Kejuruteraan Sumber Asli (FKKKSA)</option>
					
						<option value="FKM">Fakulti Kejuruteraan Mekanikal (FKM)</option>
					
						<option value="FPREE">Fakulti Kejuruteraan Petroleum Dan Kejuruteraan Tenaga Diperbaharui (FPREE)</option>
					
						<option value="FC">Fakulti Komputeran (FC)</option>
					
						<option value="FP">Fakulti Pendidikan (FP)</option>
					
						<option value="FM">Fakulti Pengurusan (FM)</option>
					
						<option value="FS">Fakulti Sains (FS)</option>
					
						<option value="FTI">Fakulti Tamadun Islam (FTI)</option>
					
						<option value="MJIIT">Institut Teknologi Antarabangsa Malaysia - Jepun (MJIIT)</option>
					
						<option value="KST">Kolej Sains dan Teknologi (KST)</option>
					
						<option value="KTU">Kolej Tentera Udara  (KTU)</option>
					
						<option value="TNCP">PEJABAT TIMBALAN NAIB CANSELOR (PEMBANGUNAN) (TNCP)</option>
					
						<option value="TNCAA">Pejabat Timbalan Naib Canselor (A&amp;A) (TNCAA)</option>
					
						<option value="TNCPI">Pejabat Timbalan Naib Canselor (P&amp;I) (TNCPI)</option>
					
						<option value="PENERBIT">Penerbit (PENERBIT)</option>
					
						<option value="KO-K">Pusat Kursus Umum dan Kokurikulum (KO-K)</option>
					
						<option value="CTL">Pusat Pembelajaran Dan Pembelajaran (CTL)</option>
					
						<option value="RMC">Pusat Pengurusan Penyelidikan (RMC)</option>
					
						<option value="SPACE">SEK PROFESIONAL DAN PENDIDIKAN LANJUTAN (SPACE)</option>
					
						<option value="SPPS">Sekolah Pengajian Pra Siswazah (SPPS)</option>
					
						<option value="SPS">Sekolah Pengajian Siswazah (SPS)</option>
					
						<option value="IBS">Sekolah Perniagaan Antarabangsa (IBS)</option>
					
						<option value="UTM AIS">UTM AIS (UTM AIS)</option>
					
						<option value="UTM Perdana">UTM Perdana School (UTM Perdana)</option>
					
						<option value="UTM Razak">UTM Razak School (UTM Razak)</option>
					
						<option value="UTMSPACE">UTM SPACE (UTMSPACE)</option>
					
					</select>
              </td>
            </tr>
          
     
            <tr>
              <th scope="row"><div align="left">Position</div></th>
              <td><label>
                <input type="text" name="cgpa" id="cgpa">
              </label></td>
            </tr>
            <tr>
              <th scope="row"><div align="left"></div></th>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <th scope="row"><div align="left"></div></th>
              <td align="center"><label>
                <input type="submit" name="button" id="button" value="Submit">
                <input type="reset" name="button2" id="button2" value="Reset">
              </label></td>
            </tr>
          </table>
    </form>
  
    
    

 
 </body>
</html>


