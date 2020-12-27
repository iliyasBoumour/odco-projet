<?php

namespace App\View\Components;

use Illuminate\View\Component;

class showNews extends Component
{
    public $poste,$pdfs,$videos;
    public function __construct($poste,$pdfs,$videos)
    {
         $this->poste = $poste;
         $this->pdfs = $pdfs;
         $this->videos = $videos;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.show-news');
    }
}
