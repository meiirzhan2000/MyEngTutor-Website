<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/visitorMasterPage.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="MyEngTutor_Website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-light">
        <div class="container py-5">
            <div class="row h-100 align-items-center py-5">
                <div class="col-lg-6">
                    <h1 class="display-4">English For Teens</h1>
                    <p class="lead text-muted mb-0">Learn English with amazing material and interesting teachings.</p>
                    <a href="RegisterationForm.aspx" class="text-muted">Get Started Now</a>
                </div>
                <div class="col-lg-2"></div>
                <div class="col-lg-4 d-none d-lg-block">
                    <img src="Assets/img/casual-life-3d-boy-sitting-on-knees-and-reading-book%201.png" alt="" class="img-fluid"/>
                </div>
            </div>
        </div>
    <div class="bg-white py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-5 px-5 mx-auto"><img src="assets/img/paper-plane.png" alt="" class="img-fluid mb-4 mb-lg-0"></div>
                <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
                    <h2 class="font-weight-light">WHY CHOOSING US?</h2>
                    <p class="font-italic text-muted mb-4">Choose My English Tutor for a personalized and engaging English learning experience. Our lessons cater to your individual needs. Benefit from our teaching methods, and supportive environment while connecting with a global community of learners. Join us and witness your English skills flourish with proven results and a wealth of resources at your fingertips.</p><a href="About.aspx" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
                </div>
            </div>
        </div>
    </div>
    <section class="bg-light py-5">
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
    <div class="bg-white py-5">
        <div class="container">
            <div class="container" style="margin-top: 48px;">
                <div class="row mb-2">
                    <div class="col"><img src="assets/img/fun-3d-illustration-cartoon-teenage-girl-with-rain-gear.jpg" style="height: 310px;margin-right: 0px;margin-left: 142px;"></div>
                    <div class="col-md-8 mx-auto">
                        <div class="accordion text-muted" role="tablist" id="accordion-1">
                            <div class="accordion-item">
                                <h2 class="accordion-header" role="tab"><button class="accordion-button collapsed font-italic" type="button" data-bs-toggle="collapse" data-bs-target="#accordion-1 .item-1" aria-expanded="false" aria-controls="accordion-1 .item-1">How Can I Find My English Level?</button></h2>
                                <div class="accordion-collapse collapse item-1" role="tabpanel" data-bs-parent="#accordion-1">
                                    <div class="accordion-body">
                                        <p class="font-italic text-muted mb-4">English level can be discovered using our tests that you can find inside units.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" role="tab"><button class="accordion-button collapsed font-italic" type="button" data-bs-toggle="collapse" data-bs-target="#accordion-1 .item-2" aria-expanded="false" aria-controls="accordion-1 .item-2">What if I Just Want to Improve My Listening Skill?</button></h2>
                                <div class="accordion-collapse collapse item-2" role="tabpanel" data-bs-parent="#accordion-1">
                                    <div class="accordion-body">
                                        <p class="font-italic text-muted mb-4">We provide a range of tutorials that include skills such as speaking, listening, reading and writing that you can practice separately.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" role="tab"><button class="accordion-button font-italic" type="button" data-bs-toggle="collapse" data-bs-target="#accordion-1 .item-3" aria-expanded="true" aria-controls="accordion-1 .item-3">Where Can I Find Statistics Related To My Progress?</button></h2>
                                <div class="accordion-collapse collapse show item-3" role="tabpanel" data-bs-parent="#accordion-1">
                                    <div class="accordion-body">
                                        <p class="font-italic">Exclusive to registered users, our platform allows you to track your progress and receive a certificate upon successful completion of your learning journey.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>