<?php

class LanguageLoader
{
    function initialize()
    {
        $ci =& get_instance();
        $ci->load->helper('language');
        $siteLang = $ci->session->userdata('site_lang');
        $ci->lang->load('general', $siteLang);
    }
}


