<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="gerirRecluso.aspx.cs" Inherits="M17AB_DAO.gerirRecluso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView OnRowDataBound="GV1_RowDataBound" ID="GV1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlRecluso">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
            <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento"></asp:BoundField>
            <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero"></asp:BoundField>
            <asp:BoundField DataField="altura_cm" HeaderText="altura_cm" SortExpression="altura_cm"></asp:BoundField>
            <asp:BoundField DataField="peso" HeaderText="peso" SortExpression="peso"></asp:BoundField>
            <asp:BoundField DataField="id_seguranca" HeaderText="id_seguranca" SortExpression="id_seguranca"></asp:BoundField>
            <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao"></asp:BoundField>
            <asp:TemplateField HeaderText="Fotografia">
                 <ItemTemplate>
                       <asp:Image ID="fotografia" runat="server" Width="200px" />
                 </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlRecluso" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT Recluso.*, Seguranca.descricao FROM Recluso INNER JOIN Seguranca ON Recluso.id_seguranca = Seguranca.id"></asp:SqlDataSource>
</asp:Content>
