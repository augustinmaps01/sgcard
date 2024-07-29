if ($request->has('card_front')) {
            $file = $request->file('card_front');

            if ($branch_id == 2) {
                //* main branch
                $location_dir = 'img/uploads/' . $location_Path[0] . '/' . $directoryName . '/';
                $fullLocationDir = public_path($location_dir);
                    if (!File::exists($fullLocationDir)) {
                                    // Create the directory if it doesn't exist
                        File::makeDirectory($fullLocationDir, 0777, true);
                    }
            }

            else if($branch_id == 3) {
                   //* Jasaan branch
                $location_dir = 'img/uploads/' . $location_Path[1] . '/' . $directoryName . '/';
                $fullLocationDir = public_path($location_dir);
                if (!File::exists($fullLocationDir)) {
                                // Create the directory if it doesn't exist
                    File::makeDirectory($fullLocationDir, 0777, true);
                }
           }
           else if($branch_id == 4) {
            //* Salay branch
            $location_dir = 'img/uploads/' . $location_Path[2] . '/' . $directoryName . '/';
            $fullLocationDir = public_path($location_dir);
            if (!File::exists($fullLocationDir)) {
                //? Create the directory if it doesn't exist
                File::makeDirectory($fullLocationDir, 0777, true);
            }
           }
           else if($branch_id == 5) {
            //* CDO Branch
            $location_dir = 'img/uploads/' . $location_Path[3] . '/' . $directoryName . '/';
            $fullLocationDir = public_path($location_dir);
            if (!File::exists($fullLocationDir)) {
                            // Create the directory if it doesn't exist
                File::makeDirectory($fullLocationDir, 0777, true);
            }
           }
           else if($branch_id == 6) {
            //* Maramag Branch
            $location_dir = 'img/uploads/' . $location_Path[4] . '/' . $directoryName . '/';
            $fullLocationDir = public_path($location_dir);
            if (!File::exists($fullLocationDir)) {
                            // Create the directory if it doesn't exist
                File::makeDirectory($fullLocationDir, 0777, true);
            }
           }
           else if($branch_id == 7) {
            //* Gingoog BLU
            $location_dir = 'img/uploads/' . $location_Path[5] . '/' . $directoryName . '/';
            $fullLocationDir = public_path($location_dir);
            if (!File::exists($fullLocationDir)) {
                            // Create the directory if it doesn't exist
                File::makeDirectory($fullLocationDir, 0777, true);
            }
           }
           else if($branch_id == 8) {
            //* Camiguin BLU
            $location_dir = 'img/uploads/' . $location_Path[6] . '/' . $directoryName . '/';
            $fullLocationDir = public_path($location_dir);
            if (!File::exists($fullLocationDir)) {
                            // Create the directory if it doesn't exist
                File::makeDirectory($fullLocationDir, 0777, true);
            }
           }
           else if($branch_id == 9) {
            //*Butuan BLU
            $location_dir = 'img/uploads/' . $location_Path[7] . '/' . $directoryName . '/';
            $fullLocationDir = public_path($location_dir);
            if (!File::exists($fullLocationDir)) {
                            // Create the directory if it doesn't exist
                File::makeDirectory($fullLocationDir, 0777, true);
            }
           }
           else if($branch_id == 10) {
            //* Manolo BLU
            $location_dir = 'img/uploads/' . $location_Path[8] . '/' . $directoryName . '/';
            $fullLocationDir = public_path($location_dir);
            if (!File::exists($fullLocationDir)) {
                            // Create the directory if it doesn't exist
                File::makeDirectory($fullLocationDir, 0777, true);
            }
           }
            $extensions = $file->getClientOriginalExtension();
            $imageName = 'SIGCARD' . '-' . 'front' . '.' . $extensions;
            $manager = new ImageManager(new Driver());
            $image = $manager->read($file);
            $image->scaleDown(width:800);
            $image->scaleDown(height:900);
            $image->save($file);
            $filePath = $location_dir . $imageName;
            // Move the file to the directory
            $file->move($fullLocationDir, $imageName);
            $sigcardFrontPath = $filePath;
            // Now $sigcardFrontPath contains the relative path from the public directory
            }
