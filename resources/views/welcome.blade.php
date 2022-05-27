@extends('app')

@php
$lang = ucfirst(LaravelLocalization::getCurrentLocale());
$index = 1;
@endphp

{{-- Success message --}}
@section('main')
@if(session()->has('message'))
           <script>
        alert('تم الإرسال بنجاح ')
        </script>
@endif

{{--Error message --}}

@if ($errors->any())
    <div class="alert alert-danger">
        <script>
        alert('تحقق من إدخالك لجميع الحقول !')
        </script>
    </div>
@endif



    <section class="main-section">
        <div class="container">
            {{-- header start --}}
            <header>
                <div class="header-logo">
                    <img src="{{ Voyager::image($data->logo) }}" alt="logo">
                </div>
                <div class="header-list">
                    <ul>
                        <li><a href="#hero">{{__('index.main')}}</a></li>
                        <li><a href="#contact_us">{{__('index.contactUs')}}</a></li>
                        <li><a href="/en">{{__('index.lang')}}</a></li>
                    </ul>
                </div>
            </header>
            {{-- end of header --}}
            {{-- hero start --}}
            <div class="hero" id="hero">
                <div class="row">
                    <div class="col-md-6 hero-text-content">
                        <h2>{{ $data['main_word_header_' . $lang] }}</h2>
                        <h4>{{ $data['title_header_' . $lang] }}</h4>
                        <p>
                            {{ $data['desc_header_' . $lang] }} </p>

                        <div class="circule-image">
                            <img src="{{ asset('img/circule-word.png') }}" alt="">
                        </div>
                    </div>
                    <div class="col-md-6 hero-image-content owl-carousel owl-theme" id="owl-carousel">

                        @foreach ($sliders as $slider)

                            <img src="{{ Voyager::image($slider->image) }}" alt="">
                        @endforeach

                    </div>
                </div>
            </div>
            {{-- end of hero --}}

            {{-- vision start --}}
            <div class="vision" id="vision">
                <div class="row align-items-center">

                    <div class="col-md-6 vision-image-content">
                        <img src="{{ Voyager::image($data->image_royaa_message) }}" alt="">
                    </div>

                    <div class="col-md-6 vision-text-content">
                        <h3>{{__('index.vision')}}</h3>
                        <p>
                            {{ $data['royaa_desc_' . $lang] }}
                        </p>
                    </div>

                </div>
            </div>
            {{-- end of vision --}}
        </div>
    </section>
    {{-- our message --}}
    <section class="our-message">
        <div class="container">
            <div class="row">
                <div class="col-12 message-content">
                    <div class="quotation-mark right-quotation-mark">
                        <img src="{{ asset('img/quotation-mark.png') }}" alt="">
                        <img src="{{ asset('img/quotation-mark.png') }}" alt="">
                    </div>
                    <div class="message-text">
                        <h2>{{__('index.ourMessage')}}</h2>
                        <p>
                            {{ $data['message_des_' . $lang] }}

                        </p>
                    </div>
                    <div class="quotation-mark left-quotation-mark">
                        <img src="{{ asset('img/quotation-mark.png') }}" alt="">
                        <img src="{{ asset('img/quotation-mark.png') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- end of our message --}}

    {{-- our services --}}
    <section class="our-services">
        <div class="container">
            <div class="row">
                <div class="col-md-6 services ">
                    <div class="services">
                        <ul class="tabs">
                            @foreach ($services as $service)
                                <li class="active" data-cont=".e{{ $service->id }}">
                                    {{ $service['title_' . $lang] }}</li>
                            @endforeach
                            {{-- <li data-cont=".plumbing-works">أعمال السباكة</li>
                            <li data-cont=".paint-works">أعمال الطلاء</li>
                            <li data-cont=".HVAC-maintenance">أعمال صيانة تكييف الهواء</li>
                            <li data-cont=".pest-control">خدمات مكافحة الحشرات</li> --}}
                        </ul>
                        <div>
                            <h3>خدماتنا</h3>
                            <p>{{ $data['service_des_' . $lang] }}
                            </p>
                        </div>

                    </div>

                </div>
                <div class="col-md-6 service-content">

                    @foreach ($services as $service)
                        <div class="e{{ $service->id }}">
                            <div class="service-text-content">
                                <h4>{{ $service['title_' . $lang] }}</h4>
                                {!! $service['description_' . $lang] !!}
                                {{-- <ul>
                                <li>استكشاف الأعطال الكهربائية</li>
                                <li>إصلاح ماس كهربائي</li>
                                <li>استبدال قاطع الدارة</li>
                                <li>ترقية الأسلاك / تجديد الأسلاك</li>
                                <li>التمديدات الكهربائية</li>
                            </ul> --}}
                            </div>
                            <div class="service-image-content">
                                <img width="270px" height="225px" src="{{ Voyager::image($service->image) }}"
                                    alt="{{ $service['title_' . $lang] }}">
                            </div>
                        </div>
                    @endforeach


                </div>
            </div>
        </div>
    </section>
    {{-- end of services --}}

    {{-- goals section --}}
    <section class="our-goals">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8 goals">
                    <div class="row">

                        @foreach ($goals as $goal)
                            <div class="col-md-6 goal">
                                <span class="goal-number">{{ $index++ }}</span>
                                <p>{{ $goal['goal_' . $lang] }}</p>
                            </div>
                        @endforeach


                    </div>
                    <h3>{{__('index.ourGoals')}}</h3>

                </div>
                <div class="col-12 col-lg-4 goals-image-content">
                    <img src="{{ Voyager::image($data->goals_image) }}" alt="">
                </div>
            </div>
        </div>
    </section>
    {{-- end of goals --}}
    {{-- Success Partners section --}}

    @php
    $index = 0;
    @endphp

    <section class="success-partners">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6 success-partners-title">
                    <h3>{{__('index.partners')}}</h3>
                </div>
                <span class="partners-logos-design"></span>
                <div class="col-12 col-lg-6 partners-logos">
                    <div class="partners-logos-column column-1">
                        @while ($index < 7)
                            @if (isset($frindes[$index]))
                                <img src="{{ Voyager::image($frindes[$index]->image) }}"
                                    alt="{{ $frindes[$index]['name_' . $lang] }}">
                            @endif
                            @php
                                $index++;
                            @endphp
                        @endwhile

                    </div>
                    <div class="partners-logos-column column-2">
                        @while ($index < 12 and $index == 7)
                            @if (isset($frindes[$index]))
                                <img src="{{ Voyager::image($frindes[$index]->image) }}"
                                    alt="{{ $frindes[$index]['name_' . $lang] }}">
                            @endif
                            @php
                                $index++;
                            @endphp
                        @endwhile


                    </div>
                    <div class="partners-logos-column column-3">
                        @while ($index < 15 and $index == 12)
                            @if (isset($frindes[$index]))
                                <img src="{{ Voyager::image($frindes[$index]->image) }}"
                                    alt="{{ $frindes[$index]['name_' . $lang] }}">
                            @endif
                            @php
                                $index++;
                            @endphp
                        @endwhile

                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- end of Success Partners section --}}
    {{-- contact section --}}
    <section class="contact-us" id="contact_us">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6 form-content">
                    <h3>{{__('index.question')}}</h3>
                    <p>{{__('index.fill')}}</p>
                    <form action="contact" method="POST">
                    @csrf
                        <div class="input-field">
                            <label for="name">{{__('index.fullname')}}</label>
                            <input requierd type="text" name="full-name" id="full_name">
                        </div>
                        <div class="input-field">
                            <label for="email"> {{__('index.email')}}</label>
                            <input requierd type="email" name="email" id="email">
                        </div>
                        <div class="input-field">
                            <label for="phone">{{__('index.phonenumber')}}</label>
                            <input requierd type="number" name="phone-number" id="phone_number">
                        </div>
                        <div class="input-field">
                            <label for="service">{{__('index.service')}}</label>
                            <select requierd id="service_id" name="service">
                            <option></option>
                                @foreach ($services as $service)
                                    <option  value="{{ $service['id'] }}">{{ $service['title_' . $lang] }}</option>
                                @endforeach

                            </select>
                        </div>
                        <div class="input-field">
                            <label for="message">{{__('index.message')}}</label>
                            <textarea requierd name="message" id="message" cols="30" rows="7"></textarea>
                        </div>
                        <div class="input-field">
                            <input type="submit" value="{{__('index.send')}}">
                        </div>

                    </form>
                </div>
                <div class="col-md-6 contact-image-content">
                    <img src="{{ Voyager::image($data->form_image) }}" alt="">
                </div>
            </div>
        </div>
    </section>
    {{-- end of contact --}}
    {{-- contact info --}}
    <section class="contact-info">
        <div class="container">
            <div class="row">
                <div class="col-md-5 contact-info-text-content">
                    <h3>{{__('index.stillContact')}}</h3>
                    <p class="contact-p">
                        {{__('index.ready')}}
                    </p>
                    <span>{{__('index.headquarters')}}</span>
                    <div class="info">
                        <div class="emails-content">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <div class="emails">
                                <p>{{ $data['mail_1'] }}</p>
                                <p>{{ $data['mail_2'] }}</p>

                            </div>
                        </div>


                        <div class="location-content">
                            <i class="fa fa-thumbtack" aria-hidden="true"></i>
                            <div class="location">
                                <p>{{ $data['location_' . $lang] }}</p>

                            </div>
                        </div>
                        <div class="phone-numbers-content">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <div class="phone-numbers">
                                <p>{{ $data['phone_1'] }}</p>
                                <p>{{ $data['phone_2'] }}</p>

                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-md-7 map">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4436.563288335262!2d-76.74920380408464!3d39.19409239099808!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7e1913f4b4fdb%3A0x18a1a674d9c0d7ad!2s7184%20Troy%20Hill%20Dr%2C%20Elkridge%2C%20MD%2021075%2C%20USA!5e0!3m2!1sen!2sro!4v1573996589257!5m2!1sen!2sro"
                        frameborder="0" style="border:0; width:100%" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
    </section>

@stop
