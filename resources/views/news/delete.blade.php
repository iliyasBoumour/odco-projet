<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Lalezar&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/color/jquery.color-2.1.2.min.js" integrity="sha256-H28SdxWrZ387Ldn0qogCzFiUDDxfPiNIyJX7BECQkDE=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
    {{-- <link rel="stylesheet" href="../style1.css"> --}}
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <title>Document</title>
    <style>
   #FAQ h5 
  {
      color:#FFF;
  }
  #FAQ i
  {
      color:#FFF;
  }
  #FAQ .card .card-header
  {
      background-color:#666262;
  }
  #doc a i {
      color: #EE7419 !important;
  }
  #doc a {
    text-decoration: none;
    color: #000;
  }
  #doc ul li {
      margin-bottom: 1rem;
      border: 1px solid rgba(0,0,0,.125) !important;
  }
    </style>
</head>
<body>
    <section class="my-4" id="FAQ">
        <div class="container">
          <div class="accordion" id="accordion1">
              <div class="card">
                  <div class="card-header collapsed" data-toggle="collapse" href="#collapse1">
                    <i class="fas fa-chevron-down"></i>
                    <h5 class="FAQ-title"> ما هي القوانين المنظمة للقطاع التعاوني بالمغرب</h5>
                  </div>
                  <div id="collapse1" class="collapse" data-parent="#accordion1">
                    <div class="card-body" id="doc">
                        <ul class="list-group text-right">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                              <a download="demenade de validation de la dénomination  طلب المصادقة على التسمية.pdf" href="demenade de validation de la dénomination  طلب المصادقة على التسمية.pdf">
                                <i class="fas fa-download"></i>
                              </a>
                              <div class="pdf">
                                <a href="demenade de validation de la dénomination  طلب المصادقة على التسمية.pdf" target="_blank">طلب المصادقة على التسمية</a>
                                <i class="fas fa-file-pdf text-danger"></i>
                              </div>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a download="demenade de validation de la dénomination  طلب المصادقة على التسمية.pdf" href="demenade de validation de la dénomination  طلب المصادقة على التسمية.pdf">
                                  <i class="fas fa-download"></i>
                                </a>
                                <div class="pdf">
                                  <a href="demenade de validation de la dénomination  طلب المصادقة على التسمية.pdf" target="_blank">طلب المصادقة على التسمية</a>
                                  <i class="fas fa-file-pdf text-danger"></i>
                                </div>
                              </li>
                        </ul>
                    </div>
                  </div>
      </div>
    </div>
        </div>
      </section>
      <script>
    let btn = document.querySelector('#FAQ');
        btn.addEventListener('click', e => {
        if(e.target.className.includes('card-header'))
        {
            if(e.target.className.includes('collapsed'))
            e.target.firstElementChild.className='fas fa-chevron-up';
            else
            e.target.firstElementChild.className='fas fa-chevron-down';
        }
        else if(e.target.className.includes('FAQ-title'))
        {
            if(e.target.parentElement.className.includes('collapsed'))
            e.target.parentElement.firstElementChild.className='fas fa-chevron-up';
            else
            e.target.parentElement.firstElementChild.className='fas fa-chevron-down';
        }
        else
        return;

    }); 
      </script>
</body>
</html>