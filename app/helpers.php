<?php

if (!function_exists('getCurrencySymbol')) {
    function getCurrencySymbol($curuencyName)
    {
        $curuencies = [
            "USD" => "$",
            "EUR" => "€",
        ];

        return $curuencies[$curuencyName];
    }
}

if (!function_exists('imageUpload')) {
    function imageUpload($file = null, $path = null, $setName = null)
    {
        $orginalFileName  = $file->getClientOriginalName();
        $fileExtension    = $file->getClientOriginalExtension();
        $orginalExtension = $file->guessClientExtension();
        $getSize          = $file->getClientSize();

        if (isset($setName)) {
            $newName = $setName . '.' . $fileExtension;
        } else {
            $newName = base64_encode($file->getClientOriginalName()) . '.' . $fileExtension;
        }

        $uploaded = $path . '' . $newName;

        try {
            return $file->store($path, ['disk' => 'public_folder']);
        } catch (\Exception $e) {
            throw new Exception($e->getMessage(), 1);
        }
    }
}
