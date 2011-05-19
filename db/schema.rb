# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100628162102) do

  create_table "addresses", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "country",          :default => "Canada"
    t.string   "state",            :default => "Ontario"
    t.string   "street"
    t.string   "city"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "phone2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applicants", :force => true do |t|
    t.integer  "seeker_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "message_for_employer"
  end

  create_table "countries", :force => true do |t|
    t.string "country"
  end

  create_table "documentations", :force => true do |t|
    t.integer  "resume_id"
    t.integer  "applicant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", :force => true do |t|
    t.integer  "user_id"
    t.string   "company_name"
    t.string   "website_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.integer  "employer_id"
    t.integer  "profession_id"
    t.string   "title"
    t.text     "description"
    t.string   "state"
    t.integer  "salary_low"
    t.integer  "salary_high"
    t.text     "qualifications"
    t.text     "apply_instructions"
    t.date     "deadline"
    t.datetime "activated_at"
    t.datetime "deactivated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["title"], :name => "index_jobs_on_title"

  create_table "logos", :force => true do |t|
    t.integer  "employer_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.integer  "integer"
    t.datetime "logo_updated_at"
    t.datetime "datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "major_canadian_cities", :force => true do |t|
    t.string "city"
    t.string "province"
  end

  create_table "professions", :force => true do |t|
    t.string "profession"
    t.string "description"
  end

  create_table "provinces", :force => true do |t|
    t.string "province"
    t.string "iso"
  end

  create_table "resumes", :force => true do |t|
    t.integer  "seeker_id"
    t.boolean  "primary"
    t.string   "name"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.integer  "integer"
    t.datetime "resume_updated_at"
    t.datetime "datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salaries", :force => true do |t|
    t.integer "salary"
    t.string  "display_value"
  end

  create_table "seekers", :force => true do |t|
    t.integer  "user_id"
    t.text     "description"
    t.text     "career_objectives"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "first_name",                :limit => 40
    t.string   "last_name",                 :limit => 40
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.string   "account_type"
    t.datetime "deleted_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
