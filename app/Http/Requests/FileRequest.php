<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FileRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $category = $this->request->get('category');

        $rules = [
            'category' => 'required', 
            'year' => 'required',
        ];

        if($category == 'Facts&Figures'){
            $rules['thumbnail'] = 'required|sometimes|mimes:jpeg,png';
            $rules['content'] = 'required';
        }

        return $rules;
    }
}
