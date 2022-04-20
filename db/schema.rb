# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_08_19_160319) do
=======
ActiveRecord::Schema.define(version: 2022_03_15_104737) do
>>>>>>> upstream/master

  create_table "annotations", id: :integer, force: :cascade do |t|
    t.integer "question_id"
    t.integer "org_id"
<<<<<<< HEAD
    t.text "text", limit: 16777215
=======
    t.text "text"
>>>>>>> upstream/master
    t.integer "type", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "versionable_id", limit: 36
    t.index ["org_id"], name: "fk_rails_aca7521f72"
    t.index ["question_id"], name: "index_annotations_on_question_id"
    t.index ["versionable_id"], name: "index_annotations_on_versionable_id"
  end

  create_table "answers", id: :integer, force: :cascade do |t|
<<<<<<< HEAD
    t.text "text", limit: 16777215
=======
    t.text "text"
>>>>>>> upstream/master
    t.integer "plan_id"
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "lock_version", default: 0
<<<<<<< HEAD
    t.index ["plan_id"], name: "index_answers_on_plan_id"
=======
    t.index ["plan_id"], name: "fk_rails_84a6005a3e"
    t.index ["plan_id"], name: "index_answers_on_plan_id"
    t.index ["question_id"], name: "fk_rails_3d5ed4418f"
>>>>>>> upstream/master
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "fk_rails_584be190c2"
  end

<<<<<<< HEAD
  create_table "answers_options", id: false, force: :cascade do |t|
    t.integer "answer_id", null: false
    t.integer "option_id", null: false
    t.index ["answer_id", "option_id"], name: "index_answers_options_on_answer_id_and_option_id"
  end

=======
>>>>>>> upstream/master
  create_table "answers_question_options", id: false, force: :cascade do |t|
    t.integer "answer_id", null: false
    t.integer "question_option_id", null: false
    t.index ["answer_id"], name: "index_answers_question_options_on_answer_id"
<<<<<<< HEAD
    t.index ["question_option_id"], name: "fk_rails_01ba00b569"
=======
>>>>>>> upstream/master
  end

  create_table "api_clients", id: :integer, force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.string "homepage"
    t.string "contact_name"
<<<<<<< HEAD
    t.string "contact_email", null: false
=======
    t.string "contact_email"
>>>>>>> upstream/master
    t.string "client_id", null: false
    t.string "client_secret", null: false
    t.datetime "last_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "org_id"
<<<<<<< HEAD
    t.index ["name"], name: "index_api_clients_on_name"
  end

  create_table "comments", id: :integer, force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "archived"
    t.integer "plan_id"
    t.integer "archived_by"
=======
    t.text "redirect_uri"
    t.string "scopes", default: "", null: false
    t.boolean "confidential", default: true
    t.boolean "trusted", default: false
    t.integer "callback_method"
    t.string "callback_uri"
    t.index ["name"], name: "index_oauth_applications_on_name"
>>>>>>> upstream/master
  end

  create_table "conditions", id: :integer, force: :cascade do |t|
    t.integer "question_id"
    t.text "option_list"
    t.integer "action_type"
    t.integer "number"
    t.text "remove_data"
    t.text "webhook_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_conditions_on_question_id"
  end

  create_table "contributors", id: :integer, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "roles", null: false
    t.integer "org_id"
    t.integer "plan_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_contributors_on_email"
<<<<<<< HEAD
=======
    t.index ["name", "id", "org_id"], name: "index_contrib_id_and_org_id"
>>>>>>> upstream/master
    t.index ["org_id"], name: "index_contributors_on_org_id"
    t.index ["plan_id"], name: "index_contributors_on_plan_id"
    t.index ["roles"], name: "index_contributors_on_roles"
  end

  create_table "departments", id: :integer, force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "org_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["org_id"], name: "index_departments_on_org_id"
  end

<<<<<<< HEAD
  create_table "dmptemplate_translations", id: :integer, force: :cascade do |t|
    t.integer "dmptemplate_id"
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description", limit: 16777215
    t.index ["dmptemplate_id"], name: "index_dmptemplate_translations_on_dmptemplate_id"
    t.index ["locale"], name: "index_dmptemplate_translations_on_locale"
  end

  create_table "dmptemplates", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "published"
    t.integer "user_id"
    t.integer "organisation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locale"
    t.boolean "is_default"
  end

  create_table "dmptemplates_guidance_groups", id: false, force: :cascade do |t|
    t.integer "dmptemplate_id"
    t.integer "guidance_group_id"
  end

=======
>>>>>>> upstream/master
  create_table "exported_plans", id: :integer, force: :cascade do |t|
    t.integer "plan_id"
    t.integer "user_id"
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "phase_id"
  end

<<<<<<< HEAD
  create_table "file_types", id: :integer, force: :cascade do |t|
    t.string "name"
    t.string "icon_name"
    t.integer "icon_size"
    t.string "icon_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "file_uploads", id: :integer, force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.integer "size"
    t.boolean "published"
    t.string "location"
    t.integer "file_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", id: :integer, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 40
    t.datetime "created_at"
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", unique: true
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
=======
  create_table "external_api_access_tokens", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "external_service_name", null: false
    t.string "access_token", null: false
    t.string "refresh_token"
    t.datetime "expires_at"
    t.datetime "revoked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expires_at"], name: "index_external_api_access_tokens_on_expires_at"
    t.index ["external_service_name"], name: "index_external_api_access_tokens_on_external_service_name"
    t.index ["user_id", "external_service_name"], name: "index_external_tokens_on_user_and_service"
    t.index ["user_id"], name: "index_external_api_access_tokens_on_user_id"
>>>>>>> upstream/master
  end

  create_table "guidance_groups", id: :integer, force: :cascade do |t|
    t.string "name"
    t.integer "org_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "optional_subset", default: false, null: false
    t.boolean "published", default: false, null: false
    t.index ["org_id"], name: "index_guidance_groups_on_org_id"
  end

<<<<<<< HEAD
  create_table "guidance_in_group", id: false, force: :cascade do |t|
    t.integer "guidance_id", null: false
    t.integer "guidance_group_id", null: false
    t.index ["guidance_id", "guidance_group_id"], name: "index_guidance_in_group_on_guidance_id_and_guidance_group_id"
  end

  create_table "guidance_translations", id: :integer, force: :cascade do |t|
    t.integer "guidance_id"
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "text", limit: 16777215
    t.index ["guidance_id"], name: "index_guidance_translations_on_guidance_id"
    t.index ["locale"], name: "index_guidance_translations_on_locale"
  end

  create_table "guidances", id: :integer, force: :cascade do |t|
    t.text "text", limit: 16777215
=======
  create_table "guidances", id: :integer, force: :cascade do |t|
    t.text "text"
>>>>>>> upstream/master
    t.integer "guidance_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "published"
    t.index ["guidance_group_id"], name: "index_guidances_on_guidance_group_id"
  end

  create_table "identifier_schemes", id: :integer, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "active"
<<<<<<< HEAD
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "logo_url", limit: 16777215
    t.text "identifier_prefix", limit: 16777215
    t.integer "context"
  end

  create_table "identifiers", id: :integer, force: :cascade do |t|
    t.string "value", null: false
    t.text "attrs"
    t.integer "identifier_scheme_id"
    t.integer "identifiable_id"
    t.string "identifiable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
=======
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "logo_url"
    t.string "identifier_prefix"
    t.integer "context"
    t.string "external_service"
  end

  create_table "identifiers", id: :integer, force: :cascade do |t|
    t.string "value", null: false
    t.text "attrs"
    t.integer "identifier_scheme_id"
    t.integer "identifiable_id"
    t.string "identifiable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> upstream/master
    t.index ["identifiable_type", "identifiable_id"], name: "index_identifiers_on_identifiable_type_and_identifiable_id"
    t.index ["identifier_scheme_id", "identifiable_id", "identifiable_type"], name: "index_identifiers_on_scheme_and_type_and_id"
    t.index ["identifier_scheme_id", "value"], name: "index_identifiers_on_identifier_scheme_id_and_value"
  end

  create_table "languages", id: :integer, force: :cascade do |t|
    t.string "abbreviation"
    t.string "description"
    t.string "name"
    t.boolean "default_language"
  end

<<<<<<< HEAD
  create_table "notes", id: :integer, force: :cascade do |t|
    t.integer "user_id"
    t.text "text", limit: 16777215
=======
  create_table "licenses", force: :cascade do |t|
    t.string "name", null: false
    t.string "identifier", null: false
    t.string "uri", null: false
    t.boolean "osi_approved", default: false
    t.boolean "deprecated", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifier", "osi_approved", "deprecated"], name: "index_license_on_identifier_and_criteria"
    t.index ["identifier"], name: "index_licenses_on_identifier"
    t.index ["uri"], name: "index_licenses_on_uri"
  end

  create_table "metadata_standards", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "rdamsc_id"
    t.string "uri"
    t.json "locations"
    t.json "related_entities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metadata_standards_research_outputs", force: :cascade do |t|
    t.bigint "metadata_standard_id"
    t.bigint "research_output_id"
    t.index ["metadata_standard_id"], name: "metadata_research_outputs_on_metadata"
    t.index ["research_output_id"], name: "metadata_research_outputs_on_ro"
  end

  create_table "notes", id: :integer, force: :cascade do |t|
    t.integer "user_id"
    t.text "text"
>>>>>>> upstream/master
    t.boolean "archived", default: false, null: false
    t.integer "answer_id"
    t.integer "archived_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["answer_id"], name: "index_notes_on_answer_id"
    t.index ["user_id"], name: "fk_rails_7f2323ad43"
  end

  create_table "notification_acknowledgements", id: :integer, force: :cascade do |t|
    t.integer "user_id"
    t.integer "notification_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["notification_id"], name: "index_notification_acknowledgements_on_notification_id"
    t.index ["user_id"], name: "index_notification_acknowledgements_on_user_id"
  end

  create_table "notifications", id: :integer, force: :cascade do |t|
    t.integer "notification_type"
    t.string "title"
    t.integer "level"
<<<<<<< HEAD
    t.text "body", limit: 16777215
=======
    t.text "body"
>>>>>>> upstream/master
    t.boolean "dismissable"
    t.date "starts_at"
    t.date "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enabled", default: true
  end

<<<<<<< HEAD
  create_table "option_warnings", id: :integer, force: :cascade do |t|
    t.integer "organisation_id"
    t.integer "option_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", id: :integer, force: :cascade do |t|
    t.integer "question_id"
    t.string "text"
    t.integer "number"
    t.boolean "is_default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
>>>>>>> upstream/master
  create_table "org_token_permissions", id: :integer, force: :cascade do |t|
    t.integer "org_id"
    t.integer "token_permission_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["org_id"], name: "index_org_token_permissions_on_org_id"
    t.index ["token_permission_type_id"], name: "fk_rails_2aa265f538"
  end

<<<<<<< HEAD
  create_table "organisation_types", id: :integer, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organisations", id: :integer, force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.string "target_url"
    t.integer "organisation_type_id"
    t.string "domain"
    t.string "wayfless_entity"
    t.integer "stylesheet_file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.boolean "is_other"
    t.string "sort_name"
    t.text "banner_text"
    t.string "logo_file_name"
    t.boolean "display_in_registration"
    t.string "logo_uid"
    t.string "logo_name"
    t.string "banner_uid"
    t.string "banner_name"
    t.integer "region_id"
    t.integer "language_id"
    t.string "contact_email"
  end

=======
>>>>>>> upstream/master
  create_table "orgs", id: :integer, force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.string "target_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_other", default: false, null: false
<<<<<<< HEAD
    t.boolean "display_in_registration"
    t.string "logo_uid"
    t.string "logo_name"
    t.string "banner_uid"
    t.string "banner_name"
    t.integer "region_id"
    t.integer "language_id"
    t.string "contact_email"
    t.integer "org_type", default: 0, null: false
    t.text "links", limit: 16777215
    t.string "contact_name"
    t.boolean "feedback_enabled", default: false
    t.text "feedback_msg", limit: 16777215
    t.boolean "managed", default: false, null: false
    t.index ["language_id"], name: "fk_rails_5640112cab"
    t.index ["region_id"], name: "fk_rails_5a6adf6bab"
=======
    t.integer "region_id"
    t.integer "language_id"
    t.string "logo_uid"
    t.string "logo_name"
    t.string "contact_email"
    t.integer "org_type", default: 0, null: false
    t.text "links"
    t.boolean "feedback_enabled", default: false
    t.text "feedback_msg"
    t.string "contact_name"
    t.boolean "managed", default: false, null: false
    t.string "api_create_plan_email_subject"
    t.text "api_create_plan_email_body"
    t.index ["language_id"], name: "fk_rails_5640112cab"
    t.index ["region_id"], name: "fk_rails_5a6adf6bab"
    t.string "helpdesk_email"
>>>>>>> upstream/master
  end

  create_table "perms", id: :integer, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "phase_translations", id: :integer, force: :cascade do |t|
    t.integer "phase_id"
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description", limit: 16777215
    t.index ["locale"], name: "index_phase_translations_on_locale"
    t.index ["phase_id"], name: "index_phase_translations_on_phase_id"
  end

  create_table "phases", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description", limit: 16777215
=======
  create_table "phases", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description"
>>>>>>> upstream/master
    t.integer "number"
    t.integer "template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "modifiable"
    t.string "versionable_id", limit: 36
    t.index ["template_id"], name: "index_phases_on_template_id"
    t.index ["versionable_id"], name: "index_phases_on_versionable_id"
  end

<<<<<<< HEAD
  create_table "plan_sections", id: :integer, force: :cascade do |t|
    t.integer "user_id"
    t.integer "section_id"
    t.integer "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "release_time"
  end

=======
>>>>>>> upstream/master
  create_table "plans", id: :integer, force: :cascade do |t|
    t.string "title"
    t.integer "template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "identifier"
<<<<<<< HEAD
    t.text "description", limit: 16777215
=======
    t.text "description"
>>>>>>> upstream/master
    t.integer "visibility", default: 3, null: false
    t.boolean "feedback_requested", default: false
    t.boolean "complete", default: false
    t.integer "org_id"
    t.integer "funder_id"
    t.integer "grant_id"
<<<<<<< HEAD
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "research_domain_id"
=======
    t.integer "api_client_id"
    t.datetime "start_date"
    t.datetime "end_date"
>>>>>>> upstream/master
    t.boolean "ethical_issues"
    t.text "ethical_issues_description"
    t.string "ethical_issues_report"
    t.integer "funding_status"
<<<<<<< HEAD
    t.index ["funder_id"], name: "index_plans_on_funder_id"
    t.index ["grant_id"], name: "index_plans_on_grant_id"
    t.index ["org_id"], name: "index_plans_on_org_id"
    t.index ["research_domain_id"], name: "index_plans_on_research_domain_id"
    t.index ["template_id"], name: "index_plans_on_template_id"
=======
    t.bigint "research_domain_id"
    t.index ["funder_id"], name: "index_plans_on_funder_id"
    t.index ["grant_id"], name: "index_plans_on_grant_id"
    t.index ["org_id"], name: "index_plans_on_org_id"
    t.index ["research_domain_id"], name: "index_plans_on_fos_id"
    t.index ["template_id"], name: "index_plans_on_template_id"
    t.index ["api_client_id"], name: "index_plans_on_api_client_id"
>>>>>>> upstream/master
  end

  create_table "plans_guidance_groups", id: :integer, force: :cascade do |t|
    t.integer "guidance_group_id"
    t.integer "plan_id"
    t.index ["guidance_group_id", "plan_id"], name: "index_plans_guidance_groups_on_guidance_group_id_and_plan_id"
<<<<<<< HEAD
=======
    t.index ["guidance_group_id"], name: "fk_rails_ec1c5524d7"
>>>>>>> upstream/master
    t.index ["plan_id"], name: "fk_rails_13d0671430"
  end

  create_table "prefs", id: :integer, force: :cascade do |t|
<<<<<<< HEAD
    t.text "settings", limit: 16777215
    t.integer "user_id"
  end

  create_table "project_groups", id: :integer, force: :cascade do |t|
    t.boolean "project_creator"
    t.boolean "project_editor"
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "project_administrator"
  end

  create_table "project_guidance", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "guidance_group_id", null: false
    t.index ["project_id", "guidance_group_id"], name: "index_project_guidance_on_project_id_and_guidance_group_id"
  end

  create_table "projects", id: :integer, force: :cascade do |t|
    t.string "title"
    t.integer "dmptemplate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "organisation_id"
    t.string "grant_number"
    t.string "identifier"
    t.text "description"
    t.string "principal_investigator"
    t.string "principal_investigator_identifier"
    t.string "data_contact"
    t.string "funder_name"
    t.index ["slug"], name: "index_projects_on_slug", unique: true
  end

  create_table "question_format_translations", id: :integer, force: :cascade do |t|
    t.integer "question_format_id"
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description", limit: 16777215
    t.index ["locale"], name: "index_question_format_translations_on_locale"
    t.index ["question_format_id"], name: "index_question_format_translations_on_question_format_id"
  end

  create_table "question_formats", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description", limit: 16777215
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "option_based", default: false
    t.integer "formattype", default: 0
  end

  create_table "question_options", id: :integer, force: :cascade do |t|
    t.integer "question_id"
    t.string "text"
    t.integer "number"
    t.boolean "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "versionable_id", limit: 36
    t.index ["question_id"], name: "index_question_options_on_question_id"
    t.index ["versionable_id"], name: "index_question_options_on_versionable_id"
  end

  create_table "question_translations", id: :integer, force: :cascade do |t|
    t.integer "question_id"
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "text", limit: 16777215
    t.text "guidance", limit: 16777215
    t.index ["locale"], name: "index_question_translations_on_locale"
    t.index ["question_id"], name: "index_question_translations_on_question_id"
  end

  create_table "questions", id: :integer, force: :cascade do |t|
    t.text "text", limit: 16777215
    t.text "default_value", limit: 16777215
    t.integer "number"
    t.integer "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "question_format_id"
    t.boolean "option_comment_display", default: true
    t.boolean "modifiable"
    t.string "versionable_id", limit: 36
    t.index ["question_format_id"], name: "fk_rails_4fbc38c8c7"
    t.index ["section_id"], name: "index_questions_on_section_id"
    t.index ["versionable_id"], name: "index_questions_on_versionable_id"
  end

  create_table "questions_themes", id: false, force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "theme_id", null: false
    t.index ["question_id"], name: "index_questions_themes_on_question_id"
    t.index ["theme_id"], name: "fk_rails_0489d5eeba"
  end

  create_table "region_groups", id: :integer, force: :cascade do |t|
    t.integer "super_region_id"
    t.integer "region_id"
  end

  create_table "regions", id: :integer, force: :cascade do |t|
    t.string "abbreviation"
    t.string "description"
    t.string "name"
    t.integer "super_region_id"
  end

  create_table "research_domains", force: :cascade do |t|
    t.string "identifier", null: false
    t.string "label", null: false
    t.bigint "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_research_domains_on_parent_id"
  end

  create_table "research_outputs", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "output_type", default: 3, null: false
    t.string "output_type_description"
    t.string "title", null: false
    t.string "abbreviation"
    t.integer "display_order"
    t.boolean "is_default"
    t.text "description"
    t.integer "access", default: 0, null: false
    t.datetime "release_date"
    t.boolean "personal_data"
    t.boolean "sensitive_data"
    t.bigint "byte_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["output_type"], name: "index_research_outputs_on_output_type"
    t.index ["plan_id"], name: "index_research_outputs_on_plan_id"
  end

  create_table "roles", id: :integer, force: :cascade do |t|
    t.integer "user_id"
    t.integer "plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "access", default: 0, null: false
    t.boolean "active", default: true
    t.index ["plan_id"], name: "index_roles_on_plan_id"
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "section_translations", id: :integer, force: :cascade do |t|
    t.integer "section_id"
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description", limit: 16777215
    t.index ["locale"], name: "index_section_translations_on_locale"
    t.index ["section_id"], name: "index_section_translations_on_section_id"
  end

  create_table "sections", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description", limit: 16777215
    t.integer "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "phase_id"
    t.boolean "modifiable"
    t.string "versionable_id", limit: 36
    t.index ["phase_id"], name: "index_sections_on_phase_id"
    t.index ["versionable_id"], name: "index_sections_on_versionable_id"
  end

  create_table "sessions", id: :integer, force: :cascade do |t|
    t.string "session_id", limit: 64, null: false
    t.text "data", limit: 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "settings", id: :integer, force: :cascade do |t|
    t.string "var", null: false
    t.text "value", limit: 16777215
    t.integer "target_id", null: false
    t.string "target_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "splash_logs", id: :integer, force: :cascade do |t|
    t.string "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", id: :integer, force: :cascade do |t|
    t.bigint "count", default: 0
    t.date "date", null: false
    t.string "type", null: false
    t.integer "org_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "details", limit: 16777215
    t.boolean "filtered", default: false
  end

  create_table "stylesheets", id: :integer, force: :cascade do |t|
    t.string "file_uid"
    t.string "file_name"
    t.integer "organisation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggested_answers", id: :integer, force: :cascade do |t|
    t.integer "question_id"
    t.integer "organisation_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_example"
  end

  create_table "templates", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description", limit: 16777215
    t.boolean "published"
    t.integer "org_id"
    t.string "locale"
    t.boolean "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "version"
    t.integer "visibility"
    t.integer "customization_of"
    t.integer "family_id"
    t.boolean "archived"
    t.text "links", limit: 16777215
    t.index ["family_id", "version"], name: "index_templates_on_family_id_and_version", unique: true
    t.index ["family_id"], name: "index_templates_on_family_id"
    t.index ["org_id", "family_id"], name: "template_organisation_dmptemplate_index"
    t.index ["org_id"], name: "index_templates_on_org_id"
  end

  create_table "themes", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description", limit: 16777215
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locale"
  end

  create_table "themes_in_guidance", id: false, force: :cascade do |t|
    t.integer "theme_id"
    t.integer "guidance_id"
    t.index ["guidance_id"], name: "index_themes_in_guidance_on_guidance_id"
    t.index ["theme_id"], name: "index_themes_in_guidance_on_theme_id"
  end

  create_table "token_permission_types", id: :integer, force: :cascade do |t|
    t.string "token_type"
    t.text "text_description", limit: 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trackers", id: :integer, force: :cascade do |t|
    t.integer "org_id"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["org_id"], name: "index_trackers_on_org_id"
  end

  create_table "user_role_types", id: :integer, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_statuses", id: :integer, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", id: :integer, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
    t.text "settings"
    t.integer "user_id"
  end

  create_table "question_format_labels", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "description"
    t.integer "question_id"
    t.integer "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_formats", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "option_based", default: false
    t.integer "formattype", default: 0
  end

  create_table "question_options", id: :integer, force: :cascade do |t|
    t.integer "question_id"
    t.string "text"
    t.integer "number"
    t.boolean "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "versionable_id", limit: 36
    t.index ["question_id"], name: "index_question_options_on_question_id"
    t.index ["versionable_id"], name: "index_question_options_on_versionable_id"
  end

  create_table "questions", id: :integer, force: :cascade do |t|
    t.text "text"
    t.text "default_value"
    t.integer "number"
    t.integer "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "question_format_id"
    t.boolean "option_comment_display", default: true
    t.boolean "modifiable"
    t.string "versionable_id", limit: 36
    t.index ["question_format_id"], name: "fk_rails_4fbc38c8c7"
    t.index ["section_id"], name: "index_questions_on_section_id"
    t.index ["versionable_id"], name: "index_questions_on_versionable_id"
  end

  create_table "questions_themes", id: false, force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "theme_id", null: false
    t.index ["question_id"], name: "index_questions_themes_on_question_id"
  end

  create_table "regions", id: :integer, force: :cascade do |t|
    t.string "abbreviation"
    t.string "description"
    t.string "name"
    t.integer "super_region_id"
  end

  create_table "related_identifiers", force: :cascade do |t|
    t.bigint "identifier_scheme_id"
    t.integer "identifier_type", null: false
    t.integer "relation_type", null: false
    t.bigint "identifiable_id"
    t.string "identifiable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "value", null: false
    t.index ["identifiable_id", "identifiable_type", "relation_type"], name: "index_relateds_on_identifiable_and_relation_type"
    t.index ["identifier_scheme_id"], name: "index_related_identifiers_on_identifier_scheme_id"
    t.index ["identifier_type"], name: "index_related_identifiers_on_identifier_type"
    t.index ["relation_type"], name: "index_related_identifiers_on_relation_type"
  end

  create_table "repositories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.string "homepage"
    t.string "contact"
    t.string "uri", null: false
    t.json "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["homepage"], name: "index_repositories_on_homepage"
    t.index ["name"], name: "index_repositories_on_name"
    t.index ["uri"], name: "index_repositories_on_uri"
  end

  create_table "repositories_research_outputs", force: :cascade do |t|
    t.bigint "research_output_id"
    t.bigint "repository_id"
    t.index ["repository_id"], name: "index_repositories_research_outputs_on_repository_id"
    t.index ["research_output_id"], name: "index_repositories_research_outputs_on_research_output_id"
  end

  create_table "research_domains", force: :cascade do |t|
    t.string "identifier", null: false
    t.string "label", null: false
    t.bigint "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_research_domains_on_parent_id"
  end

  create_table "research_outputs", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "output_type", default: 3, null: false
    t.string "output_type_description"
    t.string "title", null: false
    t.string "abbreviation"
    t.integer "display_order"
    t.boolean "is_default"
    t.text "description"
    t.integer "access", default: 0, null: false
    t.datetime "release_date"
    t.boolean "personal_data"
    t.boolean "sensitive_data"
    t.bigint "byte_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "license_id"
    t.index ["license_id"], name: "index_research_outputs_on_license_id"
    t.index ["output_type"], name: "index_research_outputs_on_output_type"
    t.index ["plan_id"], name: "index_research_outputs_on_plan_id"
  end

  create_table "roles", id: :integer, force: :cascade do |t|
    t.integer "user_id"
    t.integer "plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "access", default: 0, null: false
    t.boolean "active", default: true
    t.index ["plan_id"], name: "index_roles_on_plan_id"
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "sections", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "phase_id"
    t.boolean "modifiable"
    t.string "versionable_id", limit: 36
    t.index ["phase_id"], name: "index_sections_on_phase_id"
    t.index ["versionable_id"], name: "index_sections_on_versionable_id"
  end

  create_table "sessions", id: :integer, force: :cascade do |t|
    t.string "session_id", limit: 64, null: false
    t.text "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "settings", id: :integer, force: :cascade do |t|
    t.string "var"
    t.text "value"
    t.integer "target_id", null: false
    t.string "target_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", id: :integer, force: :cascade do |t|
    t.bigint "count", default: 0
    t.date "date", null: false
    t.string "type", null: false
    t.integer "org_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "details"
    t.boolean "filtered", default: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "plan_id"
    t.integer "subscription_types", null: false
    t.string "callback_uri"
    t.bigint "subscriber_id"
    t.string "subscriber_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_notified"
    t.index ["plan_id"], name: "index_subscriptions_on_plan_id"
    t.index ["subscriber_id", "subscriber_type", "plan_id"], name: "index_subscribers_on_identifiable_and_plan_id"
  end

  create_table "templates", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "published"
    t.integer "org_id"
    t.string "locale"
    t.boolean "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "version"
    t.integer "visibility"
    t.integer "customization_of"
    t.integer "family_id"
    t.boolean "archived"
    t.text "links"
    t.index ["family_id", "version"], name: "index_templates_on_family_id_and_version", unique: true
    t.index ["family_id"], name: "index_templates_on_family_id"
    t.index ["org_id", "family_id"], name: "template_organisation_dmptemplate_index"
    t.index ["org_id"], name: "index_templates_on_org_id"
  end

  create_table "themes", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locale"
  end

  create_table "themes_in_guidance", id: false, force: :cascade do |t|
    t.integer "theme_id"
    t.integer "guidance_id"
    t.index ["guidance_id"], name: "index_themes_in_guidance_on_guidance_id"
    t.index ["theme_id"], name: "index_themes_in_guidance_on_theme_id"
  end

  create_table "token_permission_types", id: :integer, force: :cascade do |t|
    t.string "token_type"
    t.text "text_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trackers", id: :integer, force: :cascade do |t|
    t.integer "org_id"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["org_id"], name: "index_trackers_on_org_id"
>>>>>>> upstream/master
  end

  create_table "users", id: :integer, force: :cascade do |t|
    t.string "firstname"
    t.string "surname"
    t.string "email", limit: 80, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.string "encrypted_password", default: ""
=======
    t.string "encrypted_password"
>>>>>>> upstream/master
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.string "other_organisation"
<<<<<<< HEAD
    t.boolean "dmponline3"
=======
>>>>>>> upstream/master
    t.boolean "accept_terms"
    t.integer "org_id"
    t.string "api_token"
    t.integer "invited_by_id"
    t.string "invited_by_type"
    t.integer "language_id"
    t.string "recovery_email"
<<<<<<< HEAD
=======
    t.string "ldap_password"
    t.string "ldap_username"
>>>>>>> upstream/master
    t.boolean "active", default: true
    t.integer "department_id"
    t.datetime "last_api_access"
    t.index ["department_id"], name: "fk_rails_f29bf9cdf2"
<<<<<<< HEAD
    t.index ["email"], name: "index_users_on_email", unique: true
=======
    t.index ["email"], name: "index_users_on_email"
>>>>>>> upstream/master
    t.index ["language_id"], name: "fk_rails_45f4f12508"
    t.index ["org_id"], name: "index_users_on_org_id"
  end

  create_table "users_perms", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "perm_id"
    t.index ["perm_id"], name: "fk_rails_457217c31c"
    t.index ["user_id"], name: "index_users_perms_on_user_id"
<<<<<<< HEAD
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

  create_table "version_translations", id: :integer, force: :cascade do |t|
    t.integer "version_id"
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description", limit: 16777215
    t.index ["locale"], name: "index_version_translations_on_locale"
    t.index ["version_id"], name: "index_version_translations_on_version_id"
  end

  create_table "versions", id: :integer, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "published"
    t.integer "number"
    t.integer "phase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_id"], name: "index_versions_on_phase_id"
  end

=======
  end

>>>>>>> upstream/master
  add_foreign_key "annotations", "orgs"
  add_foreign_key "annotations", "questions"
  add_foreign_key "answers", "plans"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
<<<<<<< HEAD
  add_foreign_key "answers_question_options", "answers"
  add_foreign_key "answers_question_options", "question_options"
=======
>>>>>>> upstream/master
  add_foreign_key "conditions", "questions"
  add_foreign_key "guidance_groups", "orgs"
  add_foreign_key "guidances", "guidance_groups"
  add_foreign_key "notes", "answers"
  add_foreign_key "notes", "users"
  add_foreign_key "notification_acknowledgements", "notifications"
  add_foreign_key "notification_acknowledgements", "users"
  add_foreign_key "org_token_permissions", "orgs"
  add_foreign_key "org_token_permissions", "token_permission_types"
  add_foreign_key "orgs", "languages"
  add_foreign_key "orgs", "regions"
  add_foreign_key "phases", "templates"
  add_foreign_key "plans", "orgs"
  add_foreign_key "plans", "templates"
  add_foreign_key "plans_guidance_groups", "guidance_groups"
  add_foreign_key "plans_guidance_groups", "plans"
  add_foreign_key "question_options", "questions"
  add_foreign_key "questions", "question_formats"
  add_foreign_key "questions", "sections"
<<<<<<< HEAD
  add_foreign_key "questions_themes", "questions"
  add_foreign_key "questions_themes", "themes"
  add_foreign_key "research_domains", "research_domains", column: "parent_id"
=======
  add_foreign_key "research_domains", "research_domains", column: "parent_id"
  add_foreign_key "research_outputs", "licenses"
>>>>>>> upstream/master
  add_foreign_key "roles", "plans"
  add_foreign_key "roles", "users"
  add_foreign_key "sections", "phases"
  add_foreign_key "templates", "orgs"
  add_foreign_key "themes_in_guidance", "guidances"
  add_foreign_key "themes_in_guidance", "themes"
  add_foreign_key "trackers", "orgs"
  add_foreign_key "users", "departments"
  add_foreign_key "users", "languages"
  add_foreign_key "users", "orgs"
  add_foreign_key "users_perms", "perms"
  add_foreign_key "users_perms", "users"
end
