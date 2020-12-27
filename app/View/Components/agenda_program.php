<?php

namespace App\View\Components;

use Illuminate\View\Component;

class agenda_program extends Component
{
    public $agenda,$program;
    public function __construct($agenda,$program)
    {
        $this->agenda = $agenda;
        $this->program = $program;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.agenda_program');
    }
}
