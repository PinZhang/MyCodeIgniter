<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Article extends CI_Controller
{
    public function detail($username, $articleId)
    {
        if (!file_exists(APPPATH.'views/article.php')) {
            show_404();
        }

        $data['username'] = $username;
        $this->load->view('article', $data);
    }
}
