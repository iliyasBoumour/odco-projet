<template>
     <div class="container" style="background-color: #F4F4F4 !important;">
         <div class="row">
             <div class="col">
                <div class="card text-center m-3">
                   <h3 class="card-header card_color">{{type}}</h3>
            
                <div class="card-body">
                    <input class="form-control text-right" v-model="search" type="text" placeholder="بحث" aria-label="Search">
                    <div v-if="islot == 1">
                       <section class="my-4" id="FAQ">
                        <div class="accordion" :id="'accordion'+item.id" v-for="item in pageOfItems" :key="item.id">
                            <div class="card">
                                <div class="card-header collapsed" data-toggle="collapse" :href="'#collapse'+item.id">
                                       <i class="fas fa-chevron-down"></i>
                                      <h5 class="FAQ-title">{{item.title}}</h5>
                                     
                                     
                                </div>

                                 <div :id="'collapse'+item.id" class="collapse" :data-parent="'#accordion'+item.id">
                                          <div class="card-body" id="doc">
                                              <ul class="list-group text-right">
                                                  <li v-for="pdf in item.pdfdocument" :key="pdf.id"
                                                      class="list-group-item d-flex justify-content-between align-items-center">
                                                    
                                                    <a :download="pdf.title" :href="'/storage/'+pdf.path">
                                                       <i class="fas fa-download"></i>
                                                    </a>
                                                    <div class="pdf">
                                                        <a class="a_style" style="color:#00A8FF" :href="'/storage/'+pdf.path" target="_blank">{{pdf.title}}</a>
                                                        <i class="fas fa-file-pdf text-danger"></i>
                                                    </div>
                                                  </li>
                                              </ul>
                                          </div>

                                      </div>
                            
                            </div>

                        </div>
                        </section>




                        
                        <!-- <div class="dropdown w-100 mt-3" v-for="item in pageOfItems" :key="item.id">
                        <button class="btn btn-secondary dropdown-toggle w-75 text-right" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{item.title}}
                        </button>
                        <div class="dropdown-menu w-75" aria-labelledby="dropdownMenuButton">
                            <li class="list-group-item d-flex justify-content-between align-items-center" v-for="pdf in item.pdfdocument" :key="pdf.id">
                                <a :download="'/storage/'+pdf.path" :href="'/storage/'+pdf.path">
                                <i class="fas fa-download"></i>
                                </a>
                                <div class="pdf">
                                <a :href="'/storage/'+pdf.path" target="_blank">{{pdf.title}}</a>
                                <i class="fas fa-file-pdf text-danger"></i>
                                </div>
                            </li>  -->
                           
                           
                            <!-- <li class="dropdown-item" v-for="pdf in item.pdfdocument" :key="pdf.id">
                                 
                                 <div class="text-right">
                                     <a :href="'/storage/'+pdf.path">{{pdf.title}}</a>
                                    <i class="fas fa-file-pdf text-danger"></i>
                                 </div>
                                  
                                 <a :download="'/storage/'+pdf.path">
                                  <i class="fas fa-download"></i>
                                 </a>
                            </li> -->
                            <!-- <a class="dropdown-item text-right" style="color:green"
                                v-for="pdf in item.pdfdocument" :key="pdf.id"
                                :href="'/storage/'+pdf.path">
                                <i class="fas fa-file-pdf text-danger ml-1"></i>
                                {{pdf.title}}
                            </a>
                            <a download=""></a> -->
                        <!-- </div>
                        </div>                         -->
                    </div>

                    <div v-else class="card my-3" v-for="item in pageOfItems" :key="item.id">
                        <h5 class="card-header p-2" style="color: #A5C724; font-weight:bold">
                            {{item.title}} 
                        </h5>
                        <div class="card-body">
                            <i class="fas fa-file-pdf text-danger"></i>
                            <a class="a_style" :href="'/storage/'+item.pdfdocument[0].path">
                               {{item.pdfdocument[0].title}}
                            </a>
                           
                        </div>
                    </div>
                </div>
                <div class="card-footer pb-0 pt-3" v-show="this.filter.length > 10">
                <jw-pagination :items="this.filter" @changePage="onChangePage"></jw-pagination>
                </div>
               

            </div>

                <!-- <div class="card" id="work"  style="background-color: #F4F4F4 !important;">
                    <div class="card my-3">
                    <h5 class="card-header">الاثنين, 30. ديسمبر 2019</h5>
                    <div class="card-body">
                        <i class="fas fa-file-pdf text-danger"></i>
                        <a href="#"> لائحة الناجحين في مباراة لتوظيف متصرف من الدرجة الثانية ~ سلم 11 (1 منصب)</a>
                    </div>
                    </div>
                    <div class="card my-3">
                    <h5 class="card-header">الاثنين, 30. ديسمبر 2019</h5>
                    <div class="card-body">
                        <i class="fas fa-file-pdf text-danger"></i>
                        <a href="#"> لائحة الناجحين في مباراة لتوظيف متصرف من الدرجة الثانية ~ سلم 11 (1 منصب)</a>
                    </div>
                    </div>
                    <div class="card my-3">
                    <h5 class="card-header">الاثنين, 30. ديسمبر 2019</h5>
                    <div class="card-body">
                        <i class="fas fa-file-pdf text-danger"></i>
                        <a href="#"> لائحة الناجحين في مباراة لتوظيف متصرف من الدرجة الثانية ~ سلم 11 (1 منصب)</a>
                    </div>
                    </div>
                </div> -->

            </div>
           
         </div>
     </div>



</template>


<script>
// an example array of items to be paged
const exampleItems = [...Array(10).keys()].map(i => ({ id: (i+1), name: 'Item ' + (i+1) }));

export default {
    props:['documents','type','islot'],
    data() {
        return {
            
            pageOfItems: [],
            search: '',
            
           
            
        };
    },
    methods: {
        onChangePage(pageOfItems) {
            // update page of items
            this.pageOfItems = pageOfItems;
        },
    },
    
    computed:{
        filter(){
            //console.log('fefe');
          return this.documents.filter((item) => {
                return item.title.toLowerCase().match(this.search.toLowerCase());
            });
           // return this.mydoc;
        }
    },
    mounted(){
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
    }
   

    
   
};
</script>

<style>

  @import '../../../public/css/style.css';
  .test{
      width: 100%;
  }
 
      #work .card-header
    {
      text-align: center;
      font-size: 1.5rem;
      font-weight: bold;
    }
    #work .card-body
    {
      text-align: right;
      display: flex;
      direction: rtl;
    }
    #work .card-body i
    {
      margin-left: 8px;
      margin-top: 4px;
    }
    #work .card-body a
    {
      text-decoration: none;
    }
    
    #work .card:nth-child(odd) .card-header
    {
      color: #A5C724;
    }
    #work .card:nth-child(even) .card-header
    {
      color: #EE7419;
    }
    #work .card:nth-child(odd) 
    {
      border: #A5C724 1px solid;
    }
    #work .card:nth-child(even) 
    {
      border: #EE7419 1px solid;
    }
    .card_color{
        color:white;
        background-color: #EE7419;
    }

    /* ///////// */
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
  .fa-download {
      color: #EE7419 !important;
  }
  .a_style {
    text-decoration: none;
    color: #00A8FF;
    font-weight: bold;
    font-size: 16px;
  }
  #doc ul li {
      margin-bottom: 1rem;
      border: 1px solid rgba(0,0,0,.125) !important;
  }
</style>