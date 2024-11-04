<%@ Page Language="C#" MasterPageFile="~/VisitorMasterPage.Master" AutoEventWireup="true" CodeBehind="Res.aspx.cs" Inherits="MyEngTutor_Website.Res" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-light">
        <div class="container py-3">
            <div class="row mb-4">
                <div class="col-lg-5">
                    <h2 class="display-4 font-weight-light">Our Resources</h2>
                    <p class="font-italic text-muted">This page partially presents the resources and ideas that have been used.</p>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="Images/youtube.png" alt="" width="100" class="img-fluid mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">YouTube</h5><span class="small text-uppercase text-muted">Video Source</span>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="Images/download.png" alt="" width="100" class="img-fluid mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">English Council</h5><span class="small text-uppercase text-muted">Text Source</span>
                    </div>
                </div>

                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="Images/xpeg_logo.png.pagespeed.ic.7g0VMM_UVM.png" alt="" width="100" class="img-fluid mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">English Grammar</h5><span class="small text-uppercase text-muted">Grammer and Logic Source</span>
                    </div>
                </div>

                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="Images/others-icon-13.jpg" alt="" width="100" class="img-fluid mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Other Sources</h5><span class="small text-uppercase text-muted">Other Sources</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>