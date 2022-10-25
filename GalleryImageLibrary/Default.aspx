<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GalleryImageLibrary._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h6>Resim Yükleme</h6>
<asp:FileUpload ID="FileUpload1" runat="server" />  
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" CssClass="btn-primary" />  
    </div>
    <asp:GridView ID="GridView1" runat="server"   
              
    AutoGenerateColumns="false" CssClass="table">  
    <Columns>  
        <asp:BoundField DataField="Name" HeaderText="File Name" />  

            <asp:TemplateField ItemStyle-HorizontalAlign="Center">  
                <ItemTemplate>  
                    <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                        CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>  
                </ItemTemplate>  
            </asp:TemplateField>  
        </Columns> 
         <Columns>
        <asp:ImageField DataImageUrlField="Data" ControlStyle-Width="100" ControlStyle-Height="100" HeaderText="My Image" />
    </Columns>
</asp:GridView>  

</asp:Content>
