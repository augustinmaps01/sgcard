<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
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

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
