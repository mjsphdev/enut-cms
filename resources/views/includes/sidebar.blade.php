<aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="index.html"
                                aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span
                                    class="hide-menu">Dashboard</span></a></li>

                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Menu</span></li>
                        <li class="sidebar-item {{ (Route::is('users.index')) || (Route::is('users.create')) ? 'selected' : '' }}"> <a href="{{ route('users.index') }}" class="sidebar-link {{ (Route::is('users.index')) || (Route::is('users.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="users" class="feather-icon"></i><span
                                    class="hide-menu">User</span></a></li>



                        <li class="sidebar-item {{ (Route::is('announcements.index')) || (Route::is('announcements.create')) ? 'selected' : '' }}"> <a href="{{ route('announcements.index') }}" class="sidebar-link {{ (Route::is('announcements.index')) || (Route::is('announcements.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="monitor" class="feather-icon"></i><span
                                    class="hide-menu">Announcement</span></a></li>

                        <li class="sidebar-item {{ (Route::is('surveys.index')) || (Route::is('surveys.create')) ? 'selected' : '' }}"> <a href="{{ route('surveys.index') }}" class="sidebar-link {{ (Route::is('surveys.index')) || (Route::is('surveys.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="book" class="feather-icon"></i><span
                                    class="hide-menu">Survey</span></a></li>

                           <li class="sidebar-item {{ (Route::is('file-uploads.index')) || (Route::is('file-uploads.create')) ? 'selected' : '' }}"> <a href="{{ route('file-uploads.index') }}" class="sidebar-link {{ (Route::is('file-uploads.index')) || (Route::is('file-uploads.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="folder" class="feather-icon"></i><span
                                    class="hide-menu">File</span></a></li>

                        <li class="sidebar-item {{ (Route::is('puf-items.index')) || (Route::is('puf-items.create')) ? 'selected' : '' }}"> <a href="{{ route('puf-items.index') }}" class="sidebar-link {{ (Route::is('puf-items.index')) || (Route::is('puf-items.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="folder-plus" class="feather-icon"></i><span
                                    class="hide-menu">PUF</span></a></li>

                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="file-text" class="feather-icon"></i><span
                                    class="hide-menu">Questionaire </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="form-inputs.html" class="sidebar-link"><span
                                            class="hide-menu"> List
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form-input-grid.html" class="sidebar-link"><span
                                            class="hide-menu"> Create
                                        </span></a>
                                </li>
                            </ul>
                        </li>

                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Page Management</span></li>

                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="layout" class="feather-icon"></i><span
                                    class="hide-menu">Page Content </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="form-inputs.html" class="sidebar-link"><span
                                            class="hide-menu"> List
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form-input-grid.html" class="sidebar-link"><span
                                            class="hide-menu"> Create
                                        </span></a>
                                </li>
                            </ul>
                        </li>

                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="help-circle" class="feather-icon"></i><span
                                    class="hide-menu">FAQs </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="form-inputs.html" class="sidebar-link"><span
                                            class="hide-menu"> List
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form-input-grid.html" class="sidebar-link"><span
                                            class="hide-menu"> Create
                                        </span></a>
                                </li>
                            </ul>
                        </li>

                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="image" class="feather-icon"></i><span
                                    class="hide-menu">Image</span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="form-inputs.html" class="sidebar-link"><span
                                            class="hide-menu"> List
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form-input-grid.html" class="sidebar-link"><span
                                            class="hide-menu"> Create
                                        </span></a>
                                </li>
                            </ul>
                        </li>

                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="info" class="feather-icon"></i><span
                                    class="hide-menu">Infographics</span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="form-inputs.html" class="sidebar-link"><span
                                            class="hide-menu"> List
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form-input-grid.html" class="sidebar-link"><span
                                            class="hide-menu"> Create
                                        </span></a>
                                </li>
                            </ul>
                        </li>

                        <li class="list-divider"></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="authentication-login1.html"
                                aria-expanded="false"><i data-feather="log-out" class="feather-icon"></i><span
                                    class="hide-menu">Logout</span></a></li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>