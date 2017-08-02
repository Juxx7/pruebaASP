<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prueba.aspx.cs" Inherits="prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>prueba ASP</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">

     
</head>
<body>
    
  <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Logo</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">JavaScript</a></li>
      </ul>
    </div>
  </nav>
    <form id="form1" runat="server">
    <div>
        <h1 class="center">Prueba tabla Renta ASP</h1>
    </div>
        <div class="container">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_renta" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_renta" HeaderText="ID_renta" ReadOnly="True" SortExpression="ID_renta" />
                <asp:BoundField DataField="ID_socios" HeaderText="ID_socios" SortExpression="ID_socios" />
                <asp:BoundField DataField="ID_pelicula" HeaderText="ID_pelicula" SortExpression="ID_pelicula" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoClubConnectionString %>" DeleteCommand="DELETE FROM [renta] WHERE [ID_renta] = @ID_renta" InsertCommand="INSERT INTO [renta] ([ID_renta], [ID_socios], [ID_pelicula], [Total], [Fecha]) VALUES (@ID_renta, @ID_socios, @ID_pelicula, @Total, @Fecha)" SelectCommand="SELECT * FROM [renta]" UpdateCommand="UPDATE [renta] SET [ID_socios] = @ID_socios, [ID_pelicula] = @ID_pelicula, [Total] = @Total, [Fecha] = @Fecha WHERE [ID_renta] = @ID_renta">
            <DeleteParameters>
                <asp:Parameter Name="ID_renta" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_renta" Type="String" />
                <asp:Parameter Name="ID_socios" Type="String" />
                <asp:Parameter Name="ID_pelicula" Type="String" />
                <asp:Parameter Name="Total" Type="Int32" />
                <asp:Parameter Name="Fecha" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_socios" Type="String" />
                <asp:Parameter Name="ID_pelicula" Type="String" />
                <asp:Parameter Name="Total" Type="Int32" />
                <asp:Parameter Name="Fecha" Type="Int32" />
                <asp:Parameter Name="ID_renta" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="container">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID_renta" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="ID_renta" HeaderText="ID_renta" ReadOnly="True" SortExpression="ID_renta" />
                <asp:BoundField DataField="ID_socios" HeaderText="ID_socios" SortExpression="ID_socios" />
                <asp:BoundField DataField="ID_pelicula" HeaderText="ID_pelicula" SortExpression="ID_pelicula" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
            </div>
    </form>

    <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>
     
</body>
</html>
