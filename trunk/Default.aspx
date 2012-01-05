<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterHome.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table id="Table_01" width="799" border="0" cellpadding="0" cellspacing="0" style="margin-top: -5px;
    margin-left: -7px;">
	<tr>
		<td colspan="2">
			<img id="Design_partent_01" src="images/Design-partent_01.png" width="4" height="356" alt="" /></td>
		<td colspan="3">
		 <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Images/Design-partent_02.png">
        <asp:RectangleHotSpot Bottom="277" Left="32" NavigateUrl="~/User/CustomerLogin.aspx"
            Right="198" Top="243" />
        </asp:ImageMap>
	 </td>
	</tr>
	<tr>
		<td rowspan="2">
			<img id="Design_partent_03" src="images/Design-partent_03.png" width="3" height="221" alt="" /></td>
		<td colspan="2" rowspan="2">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Design-partent_04.png" /></td>
		<td rowspan="2">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Design-partent_05.png" /></td>
		<td>
			<img id="Design_partent_06" src="images/Design-partent_06.png" width="263" height="2" alt="" /></td>
	</tr>
	<tr>
		<td>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/Design-partent_07.png" /></td>
	</tr>
	<tr>
		<td colspan="5">
			  <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/Design-partent_08.png" />
   </td>
	</tr>
	<tr>
	    
		<td colspan="5">
		 <script src="jquery.jcarousel.min.js" type="text/javascript"></script>

            <script src="user/fancybox/jquery.fancybox-1.3.4.pack.js" type="text/javascript"></script>

           <script type="text/javascript">
                jQuery(document).ready(function(e) {
                    jQuery("#mycarousel").jcarousel({
                    auto: 2,
                    wrap: 'last'
                });
            });
                
            $(document).ready(function() {
                $("#mycarousel li a").fancybox();
            });
            
            </script>
            
            <ul id="mycarousel" class="jcarousel-skin-tango">
          <li><a href= "http://trafps.vic.edu.au/wordpress/wp-content/uploads/2011/07/DSCF0634.jpg"><img src="http://static.flickr.com/66/199481236_dc98b5abb3_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://trafps.vic.edu.au/wordpress/wp-content/uploads/2011/07/DSCF0634.jpg"><img src="http://static.flickr.com/75/199481072_b4a0d09597_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://static.flickr.com/57/199481087_33ae73a8de_l.jpg"><img src="http://static.flickr.com/57/199481087_33ae73a8de_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://static.flickr.com/77/199481108_4359e6b971_l.jpg"><img src="http://static.flickr.com/77/199481108_4359e6b971_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://static.flickr.com/58/199481143_3c148d9dd3_l.jpg"><img src="http://static.flickr.com/58/199481143_3c148d9dd3_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://static.flickr.com/72/199481203_ad4cdcf109_l.jpg"><img src="http://static.flickr.com/72/199481203_ad4cdcf109_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://static.flickr.com/58/199481218_264ce20da0_l.jpg"><img src="http://static.flickr.com/58/199481218_264ce20da0_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://static.flickr.com/69/199481255_fdfe885f87_l.jpg"><img src="http://static.flickr.com/69/199481255_fdfe885f87_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://static.flickr.com/60/199480111_87d4cb3e38_l.jpg"><img src="http://static.flickr.com/60/199480111_87d4cb3e38_s.jpg" width="120" height="90" alt="" /></a></li>
    <li><a href= "http://static.flickr.com/70/229228324_08223b70fa_l.jpg"><img src="http://static.flickr.com/70/229228324_08223b70fa_s.jpg" width="120" height="90" alt="" /></a></li> 
    </ul>


</td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="3" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="1" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="267" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="265" height="1" alt="" /></td>
		<td>
			<img src="images/spacer.gif" width="263" height="1" alt="" /></td>
	</tr>
</table>
  

</asp:Content>

