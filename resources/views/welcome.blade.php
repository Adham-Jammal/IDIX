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
 </div>
</section>
<section class="our-message">
    

</section>
@stop
