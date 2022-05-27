{{-- footer --}}

<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-2 logo">
                <img src="{{ Voyager::image($data->logo) }}" alt="logo">

            </div>
            <div class="col-md-3 social-media-links">
                <p>
                    ﻦﻴﺴﺤﺗ ﻰﻠﻋ صﺮﺣ ﻞﻜﺑ ﻞﻤﻌﺗ ﺔـــــــــــــــــﻳدﻮﻌﺳ ﺔﻛﺮﺷ
                    ﻰﻫﺎﻀـــــُت ﺎﻟ لﻮﻠﺣ ﻢــــــــــــــــﻳﺪﻘﺗ ﻖﻳﺮﻃ ﻦﻋ ةﺎﻴﺤﻟاةدﻮﺟ
                </p>
                <div class="social-media">
                    {{-- <i class="fa fa-envelope" aria-hidden="true"></i>
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <i class="fa fa-envelope" aria-hidden="true"></i> --}}
                </div>
            </div>
            <div class="col-md-2 footer-contact-info">
                <h5>معلومات التواصل</h5>
                <div class="footer-emails">

                    <p>{{ $data['email_1'] }}</p>
                    <p>{{ $data['email_2'] }}</p>



                </div>
                <div class="footer-fax-tel">
                    <p>{{ $data['phone_1'] }}</p>
                    <p>{{ $data['phone_2'] }}</p>

                </div>
            </div>
            <div class="col-md-2 footer-address">
                <h5>عنوان شركة تيديكس</h5>
                <p>
                <p>{{ $data['location_' . $lang] }}</p>

                </p>

            </div>
            <div class="col-md-3 rights">
                <h5>© 2021 Awj Group LLC. All Rights Reserved</h5>
                <h5>Powered by Awj Group</h5>
            </div>
        </div>
    </div>
    <div class="second-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text">
                    <a href="#">إحدى شركات مجموعة اوج المحدودة</a>

                </div>
                <div class="col-md-6 logo">
                    <img src="{{ Voyager::image($data->logo) }}" alt="logo">

                </div>
            </div>
        </div>
    </div>
</footer>
