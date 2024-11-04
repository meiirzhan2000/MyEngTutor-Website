<%@ Page Title="About" Language="C#" MasterPageFile="~/visitorMasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyEngTutor_Website.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-light">
        <div class="container py-5">
            <div class="row h-100 align-items-center py-5">
                <div class="col-lg-6">
                    <h1 class="display-4">About us page</h1>
                    <p class="lead text-muted mb-0">We are a dedicated team of students passionate about creating a platform that empowers fellow learners to master the English language.</p>
                    <p class="lead text-muted"><a href="#scrollspyHeading1" class="text-muted"> 
                        <u>Learn More About Us</u></a>
                    </p>
                </div>
            <div class="col-lg-6 d-none d-lg-block"><img src="https://bootstrapious.com/i/snippets/sn-about/illus.png" alt="" class="img-fluid"></div>
            </div>
        </div>
    </div>
    <div class="bg-white py-5">
        <div class="container py-5">
            <div class="row align-items-center mb-5">
                <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
                    <h2 class="font-weight-light">The Bunch of Language-Loving Students: Taking English Learning to Hilarious Heights!</h2>
                    <p class="font-italic text-muted mb-4">With our unique blend of wit, creativity, and a shared passion for education, we've created a platform that not only equips students with the necessary skills but also makes the journey enjoyable.</p><a href="#" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
                </div>
                <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img src="https://bootstrapious.com/i/snippets/sn-about/img-2.jpg" alt="" class="img-fluid mb-4 mb-lg-0"></div>
            </div>
            <div class="row align-items-center">
                <div class="col-lg-5 px-5 mx-auto"><img src="https://bootstrapious.com/i/snippets/sn-about/img-1.jpg" alt="" class="img-fluid mb-4 mb-lg-0"></div>
                <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
                    <h2 class="font-weight-light">Behind the Scenes: The English Learning Avengers</h2>
                    <p class="font-italic text-muted mb-4">In a world where language barriers seemed insurmountable, a group of determined students united to form the English Learning Avengers. Armed with grammar books and linguistic superpowers, they embarked on a mission to help learners conquer English.</p><a href="#" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
                </div>
            </div>
        </div>
    </div>

    <div id="scrollspyHeading1" class="bg-light py-5">
        <div class="container py-5">
            <div class="row mb-4">
                <div class="col-lg-5">
                    <h2 class="display-4 font-weight-light">Our team</h2>
                    <p class="font-italic text-muted">Our diverse team of language enthusiasts brings passion, expertise, and a touch of humor to make English learning an enjoyable adventure!</p>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="Assets/teamMembersPictures/pcr1.jpg" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Lee Cheng Cong</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <p><a href="https://www.linkedin.com/in/lee-cheng-cong-28560126a/" class="link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Success link</a></p>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="Assets/teamMembersPictures/Untitled%20(Circle%20Sticker)%20.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Meiirzhan Baitangatov</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <p><a href="https://www.linkedin.com/in/meiirzhan-baitangatov-871632248/" class="link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Success link</a></p>
                        </ul>
                    </div>
                </div>

                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="Assets/teamMembersPictures/WhatsApp%20Image%202023-05-19%20at%2020.52.02.jpg" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Ho Wan Ning</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <p><a href="#" class="link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Success link</a></p>
                        </ul>
                    </div>
                </div>

                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img src="https://bootstrapious.com/i/snippets/sn-about/avatar-1.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Vijaybaskkar</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <p><a href="#" class="link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Success link</a></p>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
