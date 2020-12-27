<?php

namespace App\View\Components;

use Illuminate\View\Component;

class lightslider extends Component
{
    public $actualites;

    public function __construct($actualites)
    {
        $this->actualites = $actualites;
        
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.lightslider');
    }
}
