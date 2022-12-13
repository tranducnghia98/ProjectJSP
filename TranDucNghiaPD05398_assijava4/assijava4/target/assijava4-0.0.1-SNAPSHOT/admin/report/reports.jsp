<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
       <div class="col mt-4">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="videoEditing-tab" data-toggle="tab" href="#videoEditing"
                            role="tab" aria-controls="videoEditing" aria-selected="true">Favorite</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="videolist-tab" data-toggle="tab" href="#videolist" role="tab"
                            aria-controls="videolist" aria-selected="false">Favorite Users</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
                            role="tab" aria-controls="nav-contact" aria-selected="false">Share Friends</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="videoEditing" role="tabpanel" aria-labelledby="home-tab">
                        <table class="table table-strip">
                            <tr>
                                <td>Video Title</td>
                                <td>Favorites count</td>
                                <td>Lasted Day</td>
                                <td>Oldest Day</td>
                            </tr>
                            <tr>
                                <td>JavaScript</td>
                                <td>122</td>
                                <td>22/12/2022</td>
                                <td>23/12/2022</td>

                            </tr>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="videolist" role="tabpanel" aria-labelledby="profile-tab">
                        <form action="" method="post">
                            <div class="row mt-3">
                                <div class="col">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <label for="">Video Title
                                                <select name="" id="" class="form-control ml-2">
                                                    <option value="">Java</option>
                                                </select>
                                            </label>
                                            <button class="btn btn-primary ml-2" type="submit">Report</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mt-3">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>Username</td>
                                            <td>Fullname</td>
                                            <td>Email</td>
                                            <td>Favorite Date</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                        <form action="" method="post">
                            <div class="row mt-3">
                                <div class="col">
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <label for="">Video Title
                                                <select name="" id="" class="form-control ml-2">
                                                    <option value="">Java</option>
                                                </select>
                                            </label>
                                            <button class="btn btn-primary ml-2" type="submit">Report</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mt-3">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>Sender Name</td>
                                            <td>Sender Email</td>
                                            <td>Receiver Email</td>
                                            <td>Sent Date</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>