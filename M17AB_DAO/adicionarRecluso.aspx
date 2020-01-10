<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adicionarRecluso.aspx.cs" Inherits="M17AB_DAO.adicionarRecluso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView OnItemInserting="FormView1_ItemInserting" DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlRecluso">
        <EditItemTemplate>
            id:
            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
            nome:
            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
            data_nascimento:
            <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
            genero:
            <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
            altura_cm:
            <asp:TextBox Text='<%# Bind("altura_cm") %>' runat="server" ID="altura_cmTextBox" /><br />
            peso:
            <asp:TextBox Text='<%# Bind("peso") %>' runat="server" ID="pesoTextBox" /><br />
            id_seguranca:
            <asp:TextBox Text='<%# Bind("id_seguranca") %>' runat="server" ID="id_segurancaTextBox" /><br />
            fotografia:
            <asp:TextBox Text='<%# Bind("fotografia") %>' runat="server" ID="fotografiaTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            nome:
            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
            data_nascimento:
            <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
            genero:
            <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
            altura_cm:
            <asp:TextBox Text='<%# Bind("altura_cm") %>' runat="server" ID="altura_cmTextBox" /><br />
            peso:
            <asp:TextBox Text='<%# Bind("peso") %>' runat="server" ID="pesoTextBox" /><br />
            Segurança:
            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("id_seguranca") %>' DataSourceID="SqlSeguranca" DataTextField="descricao" DataValueField="id"></asp:DropDownList><asp:SqlDataSource runat="server" ID="SqlSeguranca" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [id], [descricao] FROM [Seguranca] ORDER BY [descricao]"></asp:SqlDataSource>
            <br />
            fotografia:
            <asp:FileUpload runat="server" ID="FileUpload1" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
            nome:
            <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
            data_nascimento:
            <asp:Label Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
            genero:
            <asp:Label Text='<%# Bind("genero") %>' runat="server" ID="generoLabel" /><br />
            altura_cm:
            <asp:Label Text='<%# Bind("altura_cm") %>' runat="server" ID="altura_cmLabel" /><br />
            peso:
            <asp:Label Text='<%# Bind("peso") %>' runat="server" ID="pesoLabel" /><br />
            id_seguranca:
            <asp:Label Text='<%# Bind("id_seguranca") %>' runat="server" ID="id_segurancaLabel" /><br />
            fotografia:
            <asp:Label Text='<%# Bind("fotografia") %>' runat="server" ID="fotografiaLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlRecluso" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Recluso] WHERE [id] = @id" InsertCommand="INSERT INTO [Recluso] ([nome], [data_nascimento], [genero], [altura_cm], [peso], [id_seguranca], [fotografia]) VALUES (@nome, @data_nascimento, @genero, @altura_cm, @peso, @id_seguranca, @fotografia)" SelectCommand="SELECT * FROM [Recluso]" UpdateCommand="UPDATE [Recluso] SET [nome] = @nome, [data_nascimento] = @data_nascimento, [genero] = @genero, [altura_cm] = @altura_cm, [peso] = @peso, [id_seguranca] = @id_seguranca, [fotografia] = @fotografia WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="data_nascimento"></asp:Parameter>
            <asp:Parameter Name="genero" Type="String"></asp:Parameter>
            <asp:Parameter Name="altura_cm" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="peso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="id_seguranca" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="fotografia" ></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="data_nascimento"></asp:Parameter>
            <asp:Parameter Name="genero" Type="String"></asp:Parameter>
            <asp:Parameter Name="altura_cm" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="peso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="id_seguranca" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="fotografia" Type="Object"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
