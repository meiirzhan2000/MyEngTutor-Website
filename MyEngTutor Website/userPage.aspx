<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeFile="userPage.aspx.cs" Inherits="MyEngTutor_Website.userPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-light">
        <div class="container py-5">
            <div class="row h-100 align-items-center py-5">
                <div class="col-lg-6">
                    <h1 ID="Label1" runat="server" class="display-4">English For Teens</h1>
                    <p class="lead text-muted mb-0">Hope You Are Doing Well!</p>
                    <a href="#" class="text-muted">Continue Your Journey</a>
                </div>
                <div class="col-lg-2"></div>
                <div class="col-lg-4 d-none d-lg-block">
                    <img src="Assets/img/casual-life-3d-boy-sitting-on-knees-and-reading-book%201.png" alt="" class="img-fluid"/>
                </div>
            </div>
        </div>
    <section class="bg-white py-5">
        <div class="container py-5" style="margin-bottom: 30px;">
            <div class="row gy-4 row-cols-1 row-cols-md-2 row-cols-lg-3">
                <div class="col">
                    <div class="card border-1 d-flex justify-content-center p-4">
                        <div class="card-body">
                            <div class="row align-items-center text-center">
                                <h2 class="font-italic text-muted mb-4">Video Zone</h2>
                                <img src="https://img.freepik.com/free-vector/music-video-abstract-concept-illustration-official-videoclip-internet-tv-premiere-music-video-production-professional-director-shooting-crew-musician-promotion_335657-3658.jpg?w=740&t=st=1685032059~exp=1685032659~hmac=958e229a3425ce31cc6c878991e176885dd598f9cc2a3d167bb907d6110a0b97" alt="" class="img-fluid"/>
                                <a href="video.aspx?button=video" class="btn btn-light px-5 rounded-pill shadow-sm">Start Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-1 d-flex justify-content-center p-4">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <h2 class="font-italic text-muted mb-4 text-center">Story Zone</h2>
                                <img src="https://img.freepik.com/free-vector/childs-story-book_1051-545.jpg?w=740&t=st=1685032259~exp=1685032859~hmac=cb53688dbae59640eb8a8414d9ffd16156e2ee50ca9da40b9fec8d50a8a4c89f" alt="" class="img-fluid"/>
                                <a href="video.aspx?button=story" class="btn btn-light px-5 rounded-pill shadow-sm">Start Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card d-flex justify-content-center p-4">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <h2 class="font-italic text-muted mb-4 text-center">Game Zone</h2>
                                <img src="https://img.freepik.com/free-vector/game-streamer-concept-elements-illustrated_23-2148932487.jpg?w=740&t=st=1685032142~exp=1685032742~hmac=278141d72cd452c91d1d905bc524f01f256957d526f9dde62269bcc293ddda20" alt="" class="img-fluid"/>
                                <a href="video.aspx?button=game" class="btn btn-light px-5 rounded-pill shadow-sm">Start Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        <div class="container py-5 bg-light">
            <div class="row h-100 align-items-center py-5">
                <div class="col-lg-6">
                    <h1 ID="H1" runat="server" class="display-4">Find Any Problem?</h1>
                    <p class="lead text-muted mb-0">Help us to improve our service by providing your feedback!</p>
                    <a href="Contact.aspx" class="text-muted">Contact Us</a>
                </div>
                <div class="col-lg-2"></div>
                <div class="col-lg-4 d-none d-lg-block">
                    <img src="assets/img/paper-plane.png" alt="" class="img-fluid"/>
                </div>
            </div>
        </div>
        <div class="bg-white py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-5 px-5 mx-auto"><img src="https://img.freepik.com/free-vector/curiosity-people-concept-illustration_114360-11034.jpg?w=740&t=st=1685032769~exp=1685033369~hmac=94c9c53b4fe102a5ee99740d8e2fe319149f8bc50c55c1f9e58c1629ade86bc8" alt="" class="img-fluid mb-4 mb-lg-0"></div>
                <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
                    <h2 class="font-weight-light">DISCOVER YOUR LEVEL</h2>
                    <p class="font-italic text-muted mb-4">Find Your current level of each skill by undertaking special tests!</p><a href="About.aspx" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

