<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="adminMainMenu.aspx.cs" Inherits="MyEngTutor_Website.adminMainMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="hero" class="d-flex align-items-center">
        <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-9 text-center">
                    <h1 id="mainText" runat="server"></h1>
                    <h2>Edit, Delete, Add and View Content Of the Website</h2>
                </div>
            </div>
            <div class="text-center">
                <a href="WebForm2.aspx"" class="btn-get-started scrollto">Get Started</a>
            </div>
            <div class="row icon-boxes">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon-box">
                    <div class="icon"><i class="ri-palette-line"></i></div>
                    <h4 class="title"><a href="WebForm2.aspx">Unit</a></h4>
                    <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="200">
                    <div class="icon-box">
                        <div class="icon"><i class="ri-stack-line"></i></div>
                        <h4 class="title"><a href="AdminContentUpdate.aspx">Content</a></h4>
                        <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="400">
                    <div class="icon-box">
                    <div class="icon"><i class="ri-command-line"></i></div>
                    <h4 class="title"><a href="Section.aspx">Questions</a></h4>
                    <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="zoom-in" data-aos-delay="500">
                    <div class="icon-box">
                    <div class="icon"><i class="ri-fingerprint-line"></i></div>
                    <h4 class="title"><a href="Section.aspx">Answers</a></h4>
                    <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="assets/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/aos/aos.js"></script>
    <script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/glightbox/js/glightbox.min.js"></script>
    <script src="assets/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/swiper/swiper-bundle.min.js"></script>

    <script src="assets/js/main.js"></script>

</asp:Content>
