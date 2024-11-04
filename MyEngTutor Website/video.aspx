<%@ Page Language="C#" MasterPageFile="~/VisitorMasterPage.Master" AutoEventWireup="true" CodeFile="video.aspx.cs" Inherits="MyEngTutor_Website.video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" class="bg-light" runat="server">
    <section>
        <div class="container py-3 h-100">
        <div class="row pb-4">
            <div class="col">
                <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3">
                    <ol class="breadcrumb mb-0">
                        <li class="breadcrumb-item"><a href="userPage.aspx" runat="server" id="pageer1">Home</a></li>
                        <li class="breadcrumb-item active" runat="server" id="pageer" aria-current="page">Content</li>
                    </ol>
                </nav>
            </div>
            </div>
        </div>
        
        <div id="cr" class="container py-5" runat="server">
        </div>
   </section>
</asp:Content>