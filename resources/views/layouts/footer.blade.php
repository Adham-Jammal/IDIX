{{-- footer --}}

<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-2 logo">
                <img src="{{ Voyager::image($data->logo) }}" alt="logo">

            </div>
            <div class="col-md-3 social-media-links">
                <p>
                    {{__('index.aboutCompany')}}
                </p>
                <div class="social-media">
                    <a href="mailto:{{ $data['mail_1'] }}"><i class="fa fa-envelope" aria-hidden="true"></i></a>
                    <a href="https://www.facebook.com/awjgroupllc/"><i class="fab fa-facebook-f" aria-hidden="true"></i></a>
                    <a href="https://www.linkedin.com/company/awjgroup-llc/"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a>
                    <a href="#"><i class="fab fa-youtube" aria-hidden="true"></i></a>
                    <a href="https://twitter.com/awjgroup"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                </div>
            </div>
            <div class="col-md-2 footer-contact-info">
                <h5>{{__('index.contactInfo')}}</h5>
                <div class="footer-emails">

                    <p>{{ $data['mail_1'] }}</p>
                    <p>{{ $data['mail_2'] }}</p>



                </div>
                <div class="footer-fax-tel">
                    <p>{{ $data['phone_1'] }}</p>
                    <p>{{ $data['phone3'] }}</p>
                    <p>{{ $data['phone_2'] }}</p>

                </div>
            </div>
            <div class="col-md-2 footer-address">
                <h5>{{__('index.address')}}</h5>
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
            <div class="row align-items-center">
                <div class="col-md-6 text">
                    <a href="https://awj.com.sa/">{{__('index.group')}} <i class="bi bi-box-arrow-up-right"></i> </a>

                </div>
                <div class="col-md-6 logo">
                    <img src="{{ asset('img/footer-logo.png') }}" alt="awj-logo">

                </div>
            </div>
        </div>
    </div>
</footer>
