<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridViewWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>GridView control with conditional formatting of records</h4>
            <asp:GridView ID="grdProduct" runat="server" DataSourceID="sqlProduct" OnRowDataBound ="grdProduct_RowDataBound"></asp:GridView>
            <asp:SqlDataSource runat="server" ID="sqlProduct" ConnectionString="<%$ConnectionStrings:conString %>" SelectCommand="SELECT ProductID, Name, ListPrice FROM Production.Product WHERE ListPrice>0">
                <%--<SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="ListPrice" Type="Decimal"></asp:Parameter>
                </SelectParameters>--%>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
