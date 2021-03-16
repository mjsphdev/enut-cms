<aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item {{ (Route::is('home')) ? 'selected' : '' }}"> <a class="sidebar-link sidebar-link {{ (Route::is('home')) ? 'selected' : '' }}" href="{{ route('home') }}"
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

                        <li class="sidebar-item {{ (Route::is('scanned-questionaires.index')) || (Route::is('scanned-questionaires.create')) ? 'selected' : '' }}"> <a href="{{ route('scanned-questionaires.index') }}" class="sidebar-link {{ (Route::is('scanned-questionaires.index')) || (Route::is('scanned-questionaires.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="file-text" class="feather-icon"></i><span
                                    class="hide-menu">Questionaires</span></a></li>

                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">Page Management</span></li>

                        <li class="sidebar-item {{ (Route::is('page-contents.index')) || (Route::is('page-contents.create')) ? 'selected' : '' }}"> <a href="{{ route('page-contents.index') }}" class="sidebar-link {{ (Route::is('page-contents.index')) || (Route::is('page-contents.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="layout" class="feather-icon"></i><span
                                    class="hide-menu">Page Content</span></a></li>

                        <li class="sidebar-item {{ (Route::is('faqs.index')) || (Route::is('faqs.create')) ? 'selected' : '' }}"> <a href="{{ route('faqs.index') }}" class="sidebar-link {{ (Route::is('faqs.index')) || (Route::is('faqs.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="help-circle" class="feather-icon"></i><span
                                    class="hide-menu">FAQs</span></a></li>

                        <li class="sidebar-item {{ (Route::is('image-uploads.index')) || (Route::is('image-uploads.create')) ? 'selected' : '' }}"> <a href="{{ route('image-uploads.index') }}" class="sidebar-link {{ (Route::is('image-uploads.index')) || (Route::is('image-uploads.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="image" class="feather-icon"></i><span
                                    class="hide-menu">Image</span></a></li>

                        <li class="sidebar-item {{ (Route::is('infographics.index')) || (Route::is('infographics.create')) ? 'selected' : '' }}"> <a href="{{ route('infographics.index') }}" class="sidebar-link {{ (Route::is('infographics.index')) || (Route::is('infographics.create')) ? 'selected' : '' }}"
                                aria-expanded="false"><i data-feather="info" class="feather-icon"></i><span
                                    class="hide-menu">Infographics</span></a></li>


                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>