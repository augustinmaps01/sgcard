Schema::create('user_details', function (Blueprint $table) {
            $table->id();
            $table->string('first_name');
            $table->string('middle_name')->nullable();
            $table->string('last_name');
            $table->string('email');
            $table->string('civil_status');
            $table->string('gender');
            $table->string('mobile_no');
            $table->string('suffix')->nullable();
            $table->string('birthdate');
            $table->string('address');
            $table->string('photo');
            $table->timestamps();
        });


        Schema::table('users', function (Blueprint $table) {
            //
            $table->integer('userid')->autoIncrement();
            $table->unsignedBigInteger('udid'); // Foreign key should match the id in user_details
            $table->string('username');
            $table->string('password');
            $table->unsignedBigInteger('role_id'); // Foreign key to the user_role table
            $table->timestamps();

            // Define foreign keys correctly
            $table->foreign('udid')->references('id')->on('user_details')->onDelete('cascade');
            $table->foreign('role_id')->references('id')->on('user_role')->onDelete('cascade');
        });
    }


    Schema::create('user_role', function (Blueprint $table) {
            $table->id();
            $table->integer('user_level');
            $table->string('role');
            $table->string('user_type');
            $table->timestamps();
        });



        $table->integer('userid')->autoIncrement();
            $table->unsignedBigInteger('udid'); // Foreign key should match the id in user_details
            $table->string('username');
            $table->string('password');
            $table->unsignedBigInteger('role_id'); // Foreign key to the user_role table
            $table->timestamps();

            // Define foreign keys correctly
            $table->foreign('udid')->references('id')->on('user_details')->onDelete('cascade');
            $table->foreign('role_id')->references('id')->on('user_role')->onDelete('cascade');
