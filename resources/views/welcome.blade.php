@extends('app')

@section('main')
<section class="main-section">
    <div class="container">
        {{-- header start--}}
    <header>
        <div class="header-logo">
            <img src="{{asset('img/logo.png')}}" alt="">
        </div>
        <div class="header-list">
            <ul>
                <li><a href="#">الرئيسية</a></li>
                <li><a href="#">اتصل بنا</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div>
    </header>
    {{-- end of header --}}
    {{-- hero start --}}
    <div class="hero">
        <div class="row">

            <div class="col-md-6 hero-text-content">
                <h2>الحل<br>  الأمثل</h2>
                <h4>لجميع مشاكل السباكـــــــــــــة<br> والكهرباء والطلاء وتكييف الهواء</h4>
                <p>
                    شركة TDIX مقرها الرئيسي الرياض تأسست عام 2011 كشركة تابعة لمجموعة أوج المحدودة ، يعمل فريقها على الإبتكار للنهوض بمجال التعقيم ومكافحة الحشرات والصيانة والتشغيل في المملكـــــة العربيــــــــة السعوديـــــــــــــــــــــــــة وذلك
                    من خلال إهتمامـــــــــــــــــــــــــــه بأدق التفاصيـــــــــــــــــل في المشـــــــروع
                </p>
            </div>

            <div class="col-md-6 hero-image-content">
                <img src="{{asset('img/hero-image.png')}}" alt="">
            </div>
        </div>
    </div>
    {{-- end of hero --}}

    {{-- vision start --}}
    <div class="vision" id="vision">
        <div class="row align-items-center">

            <div class="col-md-6 vision-image-content">
                <img src="{{asset('img/vision-image.png')}}" alt="">
            </div>

            <div class="col-md-6 vision-text-content">
                <h3>#رؤيتنا</h3>
                <p>
                    نتطلع ان تصبح TDIX الخيار الأمثل لعملائنــــــا للحصول على خدمات أعمــال
                    الصيانة والتشغيل ومكافحـــــــة الحشرات والتعقيــــــــــم، لنصنع عمــــــــلاً
                    يفوق توقعاتكم بتوفير اعلى مستويـــــــــــــات الجودة والامـــــــــــــــــــــان.
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
                    <img src="{{asset('img/quotation-mark.png')}}" alt="">
                    <img src="{{asset('img/quotation-mark.png')}}" alt="">
                </div>
                <div class="message-text">
                    <h2>رسالتنا#</h2>
                    <p>
                        أن نوفر خدمات استثنائية في السوق المحلي تلبي احتياجات عملائنـــــــا.
                        <br>
                        وتقديم خدمات الصيانة ومكافحة حشرات وتعقيم بشكل متميز واحترافي.
                    </p>
                </div>
                <div class="quotation-mark left-quotation-mark">
                    <img src="{{asset('img/quotation-mark.png')}}" alt="">
                    <img src="{{asset('img/quotation-mark.png')}}" alt="">
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
                        <li class="active" data-cont=".electricity-works">أعمال الكهرباء</li>
                        <li data-cont=".plumbing-works">أعمال السباكة</li>
                        <li data-cont=".paint-works">أعمال الطلاء</li>
                        <li data-cont=".HVAC-maintenance">أعمال صيانة تكييف الهواء</li>
                        <li data-cont=".pest-control">خدمات مكافحة الحشرات</li>
                      </ul>
                      <h3>خدماتنا</h3>
                      <p>تتعدد خدماتنا وتتخذ عدة أنشطة نستلهم في تنفيذها أكثر الطرق تميزاً، تغطي إدارة الصيانة والتشغيل الخدمات التالية</p>
                </div>

            </div>
            <div class="col-md-6 service-content">
                <div class="electricity-works">
                    <div class="service-text-content">
                        <h4>أعمال الكهرباء</h4>
                        <ul>
                            <li>استكشاف الأعطال الكهربائية</li>
                            <li>إصلاح ماس كهربائي</li>
                            <li>استبدال قاطع الدارة</li>
                            <li>ترقية الأسلاك / تجديد الأسلاك</li>
                            <li>التمديدات الكهربائية</li>
                        </ul>
                    </div>
                    <div class="service-image-content">
                        <img src="{{asset('img/service1.png')}}" alt="أعمال الكهرباء">
                    </div>
                </div>
                <div class="plumbing-works">
                    <div class="service-text-content">
                        <h4>أعمال السباكة</h4>
                        <ul>
                            <li>استكشاف الأعطال الكهربائية</li>
                            <li>إصلاح ماس كهربائي</li>
                            <li>استبدال قاطع الدارة</li>
                            <li>ترقية الأسلاك / تجديد الأسلاك</li>
                            <li>التمديدات الكهربائية</li>
                        </ul>
                    </div>
                    <div class="service-image-content">
                        <img src="{{asset('img/service1.png')}}" alt="أعمال الكهرباء">
                    </div>
                </div>
                <div class="paint-works">
                    <div class="service-text-content">
                        <h4>أعمال الطلاء</h4>
                        <ul>
                            <li>استكشاف الأعطال الكهربائية</li>
                            <li>إصلاح ماس كهربائي</li>
                            <li>استبدال قاطع الدارة</li>
                            <li>ترقية الأسلاك / تجديد الأسلاك</li>
                            <li>التمديدات الكهربائية</li>
                        </ul>
                    </div>
                    <div class="service-image-content">
                        <img src="{{asset('img/service1.png')}}" alt="أعمال الكهرباء">
                    </div>
                </div>
                <div class="HVAC-maintenance">
                    <div class="service-text-content">
                        <h4>صيانة تكييف الهواء</h4>
                        <ul>
                            <li>استكشاف الأعطال الكهربائية</li>
                            <li>إصلاح ماس كهربائي</li>
                            <li>استبدال قاطع الدارة</li>
                            <li>ترقية الأسلاك / تجديد الأسلاك</li>
                            <li>التمديدات الكهربائية</li>
                        </ul>
                    </div>
                    <div class="service-image-content">
                        <img src="{{asset('img/service1.png')}}" alt="أعمال الكهرباء">
                    </div>
                </div>
                <div class="pest-control">
                    <div class="service-text-content">
                        <h4>مكافحة الحشرات</h4>
                        <ul>
                            <li>استكشاف الأعطال الكهربائية</li>
                            <li>إصلاح ماس كهربائي</li>
                            <li>استبدال قاطع الدارة</li>
                            <li>ترقية الأسلاك / تجديد الأسلاك</li>
                            <li>التمديدات الكهربائية</li>
                        </ul>
                    </div>
                    <div class="service-image-content">
                        <img src="{{asset('img/service1.png')}}" alt="أعمال الكهرباء">
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
{{-- end of services --}}

{{-- goals section --}}
<section class="our-goals">
    <div class="container">
        <div class="row">
            <div class="col-md-8 goals">
                <div class="row">
                    <div class="col-md-6 goal">
                        <span class="goal-number">01</span>
                        <p>الحفاظ على صحة عملائنـــــــــــــا
                            باستعمالنا لمبيدات عديمة الرائحة
                            وغير ضارة بالإنسان والبيئـــــــــــة
                        </p>
                    </div>

                    <div class="col-md-6 goal">
                        <span class="goal-number">02</span>
                        <p>
                            إيجاد إجراءات الصيانـــــــــــــــــة
                            الفعــــــــــالة وأفضل طــــــــــرق
                            التشخيص ووسائل الحمايــــــــــة
                        </p>
                    </div>

                    <div class="col-md-6 goal">
                        <span class="goal-number">03</span>
                        <p>
                            إتقليل الآثار السلبيـــــــــــــــــــــة
                            لعملياتنا من خلال تجنـــــــــــــب
                            النفايات وتقليلهــــــــــــــــــــــــا
                        </p>
                    </div>

                    <div class="col-md-6 goal">
                        <span class="goal-number">04</span>
                        <p>
                            استخدام أحدث النظــــــــــــــــــم
                            في تقديم الخدمات ومواكبـــــــــة
                            التطورات العالميـــــــــــــــــــــــة
                        </p>
                    </div>

                    <div class="col-md-6 goal">
                        <span class="goal-number">05</span>
                        <p>
                            وضع خطط لإتمـــــــــــــــــــــــام
                            عملية الصيانة والتشغيـــــــــــــل
                            بصورة اقتصاديـــــــــــــــــــــــــة
                        </p>
                    </div>

                    <div class="col-md-6 goal">
                        <span class="goal-number">06</span>
                        <p>
                            صيانة تكييف الهــــــــــــــــــــواء
                            (مركزي – سبليـــــــــــــــــــــت)
                        </p>
                    </div>

                </div>
                <h3>#أهدافنا</h3>

            </div>
            <div class="col-md-4 goals-image-content">
                <img src="{{asset('img/goals-image.png')}}" alt="">
            </div>
        </div>
    </div>
</section>
{{-- end of goals --}}
{{-- Success Partners section --}}
<section class="success-partners">
    <div class="container">
        <div class="row">
            <div class="col-md-6 success-partners-title">
                <h3>شركاء النجاح</h3>
            </div>
            <div class="col-md-6 partners-logos">
                <div class="partners-logos-column column-1">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                </div>
                <div class="partners-logos-column column-2">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                </div>
                <div class="partners-logos-column column-3">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                    <img src="{{asset('img/logo2.png')}}" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
{{-- end of Success Partners section --}}
@stop
