<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | El following language lines contain El default error messages used by
    | El validator class. Some of Else rules have multiple versions such
    | as El size rules. Feel free to tweak each ofcampo Else messages here.
    |
    */

    'accepted' => ':attribute debe ser aceptado.',
    'active_url' => ':attribute no es una URL válida.',
    'after' => ':attribute debe ser una fecha mayor a :date.',
    'after_or_equal' => ':attribute debe ser debe ser una fecha mayor o igual a :date.',
    'alpha' => ':attribute sólo puede contener letras.',
    'alpha_dash' => ':attribute sólo puede contener letras, números, guines y guines bajos.',
    'alpha_num' => ':attribute sólo puede contener letras y números.',
    'array' => ':attribute debe ser un array.',
    'before' => ':attribute debe ser una fecha antes de :date.',
    'before_or_equal' => ':attribute debe ser una fecha menor o igual a :date.',
    'between' => [
        'numeric' => ':attribute debe ser entre :min y :max.',
        'file' => ':attribute debe ser entre :min y:max kilobytes.',
        'string' => ':attribute debe ser entre :min y :max caracteres.',
        'array' => ':attribute must have entre :min y :max items.',
    ],
    'boolean' => ':attribute debe ser verdadero o falso.',
    'confirmed' => 'La confirmación de :attribute no coincide.',
    'date' => ':attribute no es una fecha válida.',
    'date_equals' => ':attribute debe ser una fecha igual a :date.',
    'date_format' => ':attribute no coincide con el formato :format.',
    'different' => ':attribute y :other deben se distintos.',
    'digits' => ':attribute debe ser de :digits dígitos.',
    'digits_between' => ':attribute debe ser entre :min y :max digits.',
    'dimensions' => 'Las dimensiones de la imagen :attribute son inválidas.',
    'distinct' => ':attribute tiene valores duplicados.',
    'email' => ':attribute debe ser una dirección de correo válida.',
    'ends_with' => ':attribute debe terminar con: :values.',
    'exists' => 'El :attribute seleccionado es inválido.',
    'file' => ':attribute debe ser un archivo.',
    'filled' => ':attribute debe tener un valor.',
    'gt' => [
        'numeric' => ':attribute debe ser mayor a :value.',
        'file' => ':attribute debe ser mayor a :value kilobytes.',
        'string' => ':attribute debe ser mayor a :value caracteres.',
        'array' => ':attribute debe tener mas de :value items.',
    ],
    'gte' => [
        'numeric' => ':attribute debe ser mayor o igual a :value.',
        'file' => ':attribute debe ser mayor o igual a :value kilobytes.',
        'string' => ':attribute debe ser mayor o igual a :value caracteres.',
        'array' => ':attribute debe tener :value o mas items.',
    ],
    'image' => ':attribute debe ser unA imágen.',
    'in' => ':attribute es inválido.',
    'in_array' => ':attribute campo no existe in :other.',
    'in_array' => 'El campo :attribute no existe en :other.',
    'integer' => ':attribute debe ser un entero.',
    'ip' => ':attribute debe ser una dirección IP válida.',
    'ipv4' => ':attribute debe ser una dirección IPv4 válida.',
    'ipv6' => ':attribute debe ser una dirección IPv6 válida.',
    'json' => ':attribute debe ser un JSON válido.',
    'lt' => [
        'numeric' => ':attribute debe ser menor a :value.',
        'file' => ':attribute debe ser menor a :value kilobytes.',
        'string' => ':attribute debe ser menor a :value caracteres.',
        'array' => ':attribute must have menor a :value items.',
    ],
    'lte' => [
        'numeric' => ':attribute debe ser menor o igual a :value.',
        'file' => ':attribute debe ser menor o igual a :value kilobytes.',
        'string' => ':attribute debe ser menor o igual a :value caracteres.',
        'array' => ':attribute no debe tener más de :value items.',
    ],
    'max' => [
        'numeric' => ':attribute no puede ser mayor a :max.',
        'file' => ':attribute no puede ser mayor a :max kilobytes.',
        'string' => ':attribute no puede ser mayor a :max caracteres.',
        'array' => ':attribute no puede tener mas de :max items.',
    ],
    'mimes' => ':attribute debe ser un archivo de tipo: :values.',
    'mimetypes' => ':attribute debe ser un archivo de tipo: :values.',
    'min' => [
        'numeric' => ':attribute debe ser al menos de :min.',
        'file' => ':attribute debe ser al menos de :min kilobytes.',
        'string' => ':attribute debe ser al menos de :min caracteres.',
        'array' => ':attribute debe tener al menos :min items.',
    ],
    'multiple_of' => ':attribute debe ser un múltiplo de :value',
    'not_in' => ':attribute es inválido.',
    'not_regex' => 'El formato de :attribute es inválido.',
    'numeric' => ':attribute debe ser un número.',
    'password' => 'La clave es incorrecta.',
    'present' => 'El campo :attribute debe estar presente.',
    'regex' => 'El formato de :attribute es inválido.',
    'required' => 'El campo :attribute es requerido.',
    'required_if' => 'El campo :attribute es requerido :other es :value.',
    'required_unless' => 'El campo :attribute es requerido a menos que :other esté en :values.',
    'required_with' => 'El campo :attribute cuando está presente :values.',
    'required_with_all' => 'El campo :attribute es requerido cuando :values estén presentes.',
    'required_without' => 'El campo :attribute es requerido cuandno no eté presente :values.',
    'required_without_all' => 'El campo :attribute es requerido cunedo no estén presentes :values.',
    'same' => 'Deben coincidir :attribute y :other.',
    'size' => [
        'numeric' => ':attribute debe ser :size.',
        'file' => ':attribute debe ser de :size kilobytes.',
        'string' => ':attribute debe ser de :size caracteres.',
        'array' => ':attribute debe contener :size items.',
    ],
    'starts_with' => ':attribute debe comenzar con: :values.',
    'string' => ':attribute debe ser una cadena.',
    'timezone' => ':attribute debe ser zona válida.',
    'unique' => ':attribute ya ha sido utilizado.',
    'uploaded' => ':attribute falló al cargar.',
    'url' => 'El formato de :attribute es inválido.',
    'uuid' => ':attribute debe ser una UUID válida.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using El
    | convention "attribute.rule" to name El lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | El following language lines are used to swap our attribute placeholder
    | with something more reader friendly such as "E-Mail Address" instead
    | of "email". This simply helps us make our message more expressive.
    |
    */

    'attributes' => [],

];
