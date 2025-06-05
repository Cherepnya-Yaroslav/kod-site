--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13 (Debian 15.13-1.pgdg120+1)
-- Dumped by pg_dump version 15.13 (Debian 15.13-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_ifk;
ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_fk;
ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_ifk;
ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_fk;
ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_ifk;
ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_fk;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
ALTER TABLE ONLY public.theme_party_events DROP CONSTRAINT theme_party_events_updated_by_id_fk;
ALTER TABLE ONLY public.theme_party_events DROP CONSTRAINT theme_party_events_created_by_id_fk;
ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk;
ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_fk;
ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk;
ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_fk;
ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_created_by_id_fk;
ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk;
ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk;
ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_created_by_id_fk;
ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk;
ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk;
ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_ifk;
ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_fk;
ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_created_by_id_fk;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_ifk;
ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_fk;
ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
ALTER TABLE ONLY public.promo_banners DROP CONSTRAINT promo_banners_updated_by_id_fk;
ALTER TABLE ONLY public.promo_banners DROP CONSTRAINT promo_banners_created_by_id_fk;
ALTER TABLE ONLY public.personal_parties_pages DROP CONSTRAINT personal_parties_pages_updated_by_id_fk;
ALTER TABLE ONLY public.personal_parties_pages_cmps DROP CONSTRAINT personal_parties_pages_entity_fk;
ALTER TABLE ONLY public.personal_parties_pages DROP CONSTRAINT personal_parties_pages_created_by_id_fk;
ALTER TABLE ONLY public.open_parties_pages DROP CONSTRAINT open_parties_pages_updated_by_id_fk;
ALTER TABLE ONLY public.open_parties_pages_cmps DROP CONSTRAINT open_parties_pages_entity_fk;
ALTER TABLE ONLY public.open_parties_pages DROP CONSTRAINT open_parties_pages_created_by_id_fk;
ALTER TABLE ONLY public.kids_games_pages DROP CONSTRAINT kids_games_pages_updated_by_id_fk;
ALTER TABLE ONLY public.kids_games_pages_cmps DROP CONSTRAINT kids_games_pages_entity_fk;
ALTER TABLE ONLY public.kids_games_pages DROP CONSTRAINT kids_games_pages_created_by_id_fk;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_updated_by_id_fk;
ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_created_by_id_fk;
ALTER TABLE ONLY public.games DROP CONSTRAINT games_updated_by_id_fk;
ALTER TABLE ONLY public.games DROP CONSTRAINT games_created_by_id_fk;
ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_updated_by_id_fk;
ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_created_by_id_fk;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_fk;
ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_ifk;
ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_fk;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
ALTER TABLE ONLY public.events DROP CONSTRAINT events_updated_by_id_fk;
ALTER TABLE ONLY public.events DROP CONSTRAINT events_created_by_id_fk;
ALTER TABLE ONLY public.dance_pages DROP CONSTRAINT dance_pages_updated_by_id_fk;
ALTER TABLE ONLY public.dance_pages_cmps DROP CONSTRAINT dance_pages_entity_fk;
ALTER TABLE ONLY public.dance_pages DROP CONSTRAINT dance_pages_created_by_id_fk;
ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_updated_by_id_fk;
ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_created_by_id_fk;
ALTER TABLE ONLY public.components_shared_prices_cmps DROP CONSTRAINT components_shared_prices_entity_fk;
ALTER TABLE ONLY public.coffee_pages DROP CONSTRAINT coffee_pages_updated_by_id_fk;
ALTER TABLE ONLY public.coffee_pages DROP CONSTRAINT coffee_pages_created_by_id_fk;
ALTER TABLE ONLY public.adult_games_pages DROP CONSTRAINT adult_games_pages_updated_by_id_fk;
ALTER TABLE ONLY public.adult_games_pages_cmps DROP CONSTRAINT adult_games_pages_entity_fk;
ALTER TABLE ONLY public.adult_games_pages DROP CONSTRAINT adult_games_pages_created_by_id_fk;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_ifk;
ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_fk;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_ifk;
ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_fk;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
DROP INDEX public.upload_folders_updated_by_id_fk;
DROP INDEX public.upload_folders_parent_lnk_oifk;
DROP INDEX public.upload_folders_parent_lnk_ifk;
DROP INDEX public.upload_folders_parent_lnk_fk;
DROP INDEX public.upload_folders_documents_idx;
DROP INDEX public.upload_folders_created_by_id_fk;
DROP INDEX public.upload_files_updated_at_index;
DROP INDEX public.upload_files_size_index;
DROP INDEX public.upload_files_name_index;
DROP INDEX public.upload_files_folder_path_index;
DROP INDEX public.upload_files_ext_index;
DROP INDEX public.upload_files_created_at_index;
DROP INDEX public.up_users_updated_by_id_fk;
DROP INDEX public.up_users_role_lnk_oifk;
DROP INDEX public.up_users_role_lnk_ifk;
DROP INDEX public.up_users_role_lnk_fk;
DROP INDEX public.up_users_documents_idx;
DROP INDEX public.up_users_created_by_id_fk;
DROP INDEX public.up_roles_updated_by_id_fk;
DROP INDEX public.up_roles_documents_idx;
DROP INDEX public.up_roles_created_by_id_fk;
DROP INDEX public.up_permissions_updated_by_id_fk;
DROP INDEX public.up_permissions_role_lnk_oifk;
DROP INDEX public.up_permissions_role_lnk_ifk;
DROP INDEX public.up_permissions_role_lnk_fk;
DROP INDEX public.up_permissions_documents_idx;
DROP INDEX public.up_permissions_created_by_id_fk;
DROP INDEX public.theme_party_events_updated_by_id_fk;
DROP INDEX public.theme_party_events_documents_idx;
DROP INDEX public.theme_party_events_created_by_id_fk;
DROP INDEX public.strapi_workflows_updated_by_id_fk;
DROP INDEX public.strapi_workflows_stages_workflow_lnk_oifk;
DROP INDEX public.strapi_workflows_stages_workflow_lnk_ifk;
DROP INDEX public.strapi_workflows_stages_workflow_lnk_fk;
DROP INDEX public.strapi_workflows_stages_updated_by_id_fk;
DROP INDEX public.strapi_workflows_stages_permissions_lnk_ofk;
DROP INDEX public.strapi_workflows_stages_permissions_lnk_ifk;
DROP INDEX public.strapi_workflows_stages_permissions_lnk_fk;
DROP INDEX public.strapi_workflows_stages_documents_idx;
DROP INDEX public.strapi_workflows_stages_created_by_id_fk;
DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_ifk;
DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_fk;
DROP INDEX public.strapi_workflows_documents_idx;
DROP INDEX public.strapi_workflows_created_by_id_fk;
DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
DROP INDEX public.strapi_transfer_tokens_documents_idx;
DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
DROP INDEX public.strapi_transfer_token_permissions_token_lnk_oifk;
DROP INDEX public.strapi_transfer_token_permissions_token_lnk_ifk;
DROP INDEX public.strapi_transfer_token_permissions_token_lnk_fk;
DROP INDEX public.strapi_transfer_token_permissions_documents_idx;
DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
DROP INDEX public.strapi_releases_updated_by_id_fk;
DROP INDEX public.strapi_releases_documents_idx;
DROP INDEX public.strapi_releases_created_by_id_fk;
DROP INDEX public.strapi_release_actions_updated_by_id_fk;
DROP INDEX public.strapi_release_actions_release_lnk_oifk;
DROP INDEX public.strapi_release_actions_release_lnk_ifk;
DROP INDEX public.strapi_release_actions_release_lnk_fk;
DROP INDEX public.strapi_release_actions_documents_idx;
DROP INDEX public.strapi_release_actions_created_by_id_fk;
DROP INDEX public.strapi_history_versions_created_by_id_fk;
DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
DROP INDEX public.strapi_api_tokens_documents_idx;
DROP INDEX public.strapi_api_tokens_created_by_id_fk;
DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
DROP INDEX public.strapi_api_token_permissions_token_lnk_oifk;
DROP INDEX public.strapi_api_token_permissions_token_lnk_ifk;
DROP INDEX public.strapi_api_token_permissions_token_lnk_fk;
DROP INDEX public.strapi_api_token_permissions_documents_idx;
DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
DROP INDEX public.promo_banners_updated_by_id_fk;
DROP INDEX public.promo_banners_documents_idx;
DROP INDEX public.promo_banners_created_by_id_fk;
DROP INDEX public.personal_parties_pages_updated_by_id_fk;
DROP INDEX public.personal_parties_pages_field_idx;
DROP INDEX public.personal_parties_pages_entity_fk;
DROP INDEX public.personal_parties_pages_documents_idx;
DROP INDEX public.personal_parties_pages_created_by_id_fk;
DROP INDEX public.personal_parties_pages_component_type_idx;
DROP INDEX public.open_parties_pages_updated_by_id_fk;
DROP INDEX public.open_parties_pages_field_idx;
DROP INDEX public.open_parties_pages_entity_fk;
DROP INDEX public.open_parties_pages_documents_idx;
DROP INDEX public.open_parties_pages_created_by_id_fk;
DROP INDEX public.open_parties_pages_component_type_idx;
DROP INDEX public.kids_games_pages_updated_by_id_fk;
DROP INDEX public.kids_games_pages_field_idx;
DROP INDEX public.kids_games_pages_entity_fk;
DROP INDEX public.kids_games_pages_documents_idx;
DROP INDEX public.kids_games_pages_created_by_id_fk;
DROP INDEX public.kids_games_pages_component_type_idx;
DROP INDEX public.i18n_locale_updated_by_id_fk;
DROP INDEX public.i18n_locale_documents_idx;
DROP INDEX public.i18n_locale_created_by_id_fk;
DROP INDEX public.home_pages_updated_by_id_fk;
DROP INDEX public.home_pages_documents_idx;
DROP INDEX public.home_pages_created_by_id_fk;
DROP INDEX public.games_updated_by_id_fk;
DROP INDEX public.games_documents_idx;
DROP INDEX public.games_created_by_id_fk;
DROP INDEX public.footers_updated_by_id_fk;
DROP INDEX public.footers_documents_idx;
DROP INDEX public.footers_created_by_id_fk;
DROP INDEX public.files_updated_by_id_fk;
DROP INDEX public.files_related_mph_oidx;
DROP INDEX public.files_related_mph_idix;
DROP INDEX public.files_related_mph_fk;
DROP INDEX public.files_folder_lnk_oifk;
DROP INDEX public.files_folder_lnk_ifk;
DROP INDEX public.files_folder_lnk_fk;
DROP INDEX public.files_documents_idx;
DROP INDEX public.files_created_by_id_fk;
DROP INDEX public.events_updated_by_id_fk;
DROP INDEX public.events_documents_idx;
DROP INDEX public.events_created_by_id_fk;
DROP INDEX public.dance_pages_updated_by_id_fk;
DROP INDEX public.dance_pages_field_idx;
DROP INDEX public.dance_pages_entity_fk;
DROP INDEX public.dance_pages_documents_idx;
DROP INDEX public.dance_pages_created_by_id_fk;
DROP INDEX public.dance_pages_component_type_idx;
DROP INDEX public.contacts_updated_by_id_fk;
DROP INDEX public.contacts_documents_idx;
DROP INDEX public.contacts_created_by_id_fk;
DROP INDEX public.components_shared_prices_field_idx;
DROP INDEX public.components_shared_prices_entity_fk;
DROP INDEX public.components_shared_prices_component_type_idx;
DROP INDEX public.coffee_pages_updated_by_id_fk;
DROP INDEX public.coffee_pages_documents_idx;
DROP INDEX public.coffee_pages_created_by_id_fk;
DROP INDEX public.adult_games_pages_updated_by_id_fk;
DROP INDEX public.adult_games_pages_field_idx;
DROP INDEX public.adult_games_pages_entity_fk;
DROP INDEX public.adult_games_pages_documents_idx;
DROP INDEX public.adult_games_pages_created_by_id_fk;
DROP INDEX public.adult_games_pages_component_type_idx;
DROP INDEX public.admin_users_updated_by_id_fk;
DROP INDEX public.admin_users_roles_lnk_oifk;
DROP INDEX public.admin_users_roles_lnk_ofk;
DROP INDEX public.admin_users_roles_lnk_ifk;
DROP INDEX public.admin_users_roles_lnk_fk;
DROP INDEX public.admin_users_documents_idx;
DROP INDEX public.admin_users_created_by_id_fk;
DROP INDEX public.admin_roles_updated_by_id_fk;
DROP INDEX public.admin_roles_documents_idx;
DROP INDEX public.admin_roles_created_by_id_fk;
DROP INDEX public.admin_permissions_updated_by_id_fk;
DROP INDEX public.admin_permissions_role_lnk_oifk;
DROP INDEX public.admin_permissions_role_lnk_ifk;
DROP INDEX public.admin_permissions_role_lnk_fk;
DROP INDEX public.admin_permissions_documents_idx;
DROP INDEX public.admin_permissions_created_by_id_fk;
ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_uq;
ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_pkey;
ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_uq;
ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_pkey;
ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_uq;
ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_pkey;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
ALTER TABLE ONLY public.theme_party_events DROP CONSTRAINT theme_party_events_pkey;
ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_uq;
ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey;
ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_pkey;
ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_uq;
ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey;
ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq;
ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey;
ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_pkey;
ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq;
ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey;
ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_uq;
ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_pkey;
ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
ALTER TABLE ONLY public.strapi_migrations_internal DROP CONSTRAINT strapi_migrations_internal_pkey;
ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_pkey;
ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_uq;
ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_pkey;
ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
ALTER TABLE ONLY public.promo_banners DROP CONSTRAINT promo_banners_pkey;
ALTER TABLE ONLY public.personal_parties_pages_cmps DROP CONSTRAINT personal_parties_pages_uq;
ALTER TABLE ONLY public.personal_parties_pages DROP CONSTRAINT personal_parties_pages_pkey;
ALTER TABLE ONLY public.personal_parties_pages_cmps DROP CONSTRAINT personal_parties_pages_cmps_pkey;
ALTER TABLE ONLY public.open_parties_pages_cmps DROP CONSTRAINT open_parties_pages_uq;
ALTER TABLE ONLY public.open_parties_pages DROP CONSTRAINT open_parties_pages_pkey;
ALTER TABLE ONLY public.open_parties_pages_cmps DROP CONSTRAINT open_parties_pages_cmps_pkey;
ALTER TABLE ONLY public.kids_games_pages_cmps DROP CONSTRAINT kids_games_pages_uq;
ALTER TABLE ONLY public.kids_games_pages DROP CONSTRAINT kids_games_pages_pkey;
ALTER TABLE ONLY public.kids_games_pages_cmps DROP CONSTRAINT kids_games_pages_cmps_pkey;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
ALTER TABLE ONLY public.home_pages DROP CONSTRAINT home_pages_pkey;
ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
ALTER TABLE ONLY public.footers DROP CONSTRAINT footers_pkey;
ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_pkey;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_uq;
ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_pkey;
ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
ALTER TABLE ONLY public.dance_pages_cmps DROP CONSTRAINT dance_pages_uq;
ALTER TABLE ONLY public.dance_pages DROP CONSTRAINT dance_pages_pkey;
ALTER TABLE ONLY public.dance_pages_cmps DROP CONSTRAINT dance_pages_cmps_pkey;
ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
ALTER TABLE ONLY public.components_shared_trainers DROP CONSTRAINT components_shared_trainers_pkey;
ALTER TABLE ONLY public.components_shared_testimonials DROP CONSTRAINT components_shared_testimonials_pkey;
ALTER TABLE ONLY public.components_shared_prices_cmps DROP CONSTRAINT components_shared_prices_uq;
ALTER TABLE ONLY public.components_shared_prices DROP CONSTRAINT components_shared_prices_pkey;
ALTER TABLE ONLY public.components_shared_prices_cmps DROP CONSTRAINT components_shared_prices_cmps_pkey;
ALTER TABLE ONLY public.components_shared_points DROP CONSTRAINT components_shared_points_pkey;
ALTER TABLE ONLY public.components_shared_page_headers DROP CONSTRAINT components_shared_page_headers_pkey;
ALTER TABLE ONLY public.components_shared_fishkis DROP CONSTRAINT components_shared_fishkis_pkey;
ALTER TABLE ONLY public.components_shared_faq_items DROP CONSTRAINT components_shared_faq_items_pkey;
ALTER TABLE ONLY public.components_shared_dance_types DROP CONSTRAINT components_shared_dance_types_pkey;
ALTER TABLE ONLY public.components_programs_programs DROP CONSTRAINT components_programs_programs_pkey;
ALTER TABLE ONLY public.coffee_pages DROP CONSTRAINT coffee_pages_pkey;
ALTER TABLE ONLY public.adult_games_pages_cmps DROP CONSTRAINT adult_games_pages_uq;
ALTER TABLE ONLY public.adult_games_pages DROP CONSTRAINT adult_games_pages_pkey;
ALTER TABLE ONLY public.adult_games_pages_cmps DROP CONSTRAINT adult_games_pages_cmps_pkey;
ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_uq;
ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_pkey;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_uq;
ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_pkey;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
ALTER TABLE public.upload_folders_parent_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_users_role_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.theme_party_events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_workflows_stages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_workflows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_release_actions_release_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_migrations_internal ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_history_versions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_api_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.promo_banners ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.personal_parties_pages_cmps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.personal_parties_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.open_parties_pages_cmps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.open_parties_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.kids_games_pages_cmps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.kids_games_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.home_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.games ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.footers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.files_related_mph ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.files_folder_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dance_pages_cmps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dance_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_trainers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_testimonials ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_prices_cmps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_prices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_points ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_page_headers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_fishkis ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_faq_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_shared_dance_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.components_programs_programs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.coffee_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.adult_games_pages_cmps ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.adult_games_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_users_roles_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.upload_folders_parent_lnk_id_seq;
DROP TABLE public.upload_folders_parent_lnk;
DROP SEQUENCE public.upload_folders_id_seq;
DROP TABLE public.upload_folders;
DROP SEQUENCE public.up_users_role_lnk_id_seq;
DROP TABLE public.up_users_role_lnk;
DROP SEQUENCE public.up_users_id_seq;
DROP TABLE public.up_users;
DROP SEQUENCE public.up_roles_id_seq;
DROP TABLE public.up_roles;
DROP SEQUENCE public.up_permissions_role_lnk_id_seq;
DROP TABLE public.up_permissions_role_lnk;
DROP SEQUENCE public.up_permissions_id_seq;
DROP TABLE public.up_permissions;
DROP SEQUENCE public.theme_party_events_id_seq;
DROP TABLE public.theme_party_events;
DROP SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq;
DROP TABLE public.strapi_workflows_stages_workflow_lnk;
DROP SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq;
DROP TABLE public.strapi_workflows_stages_permissions_lnk;
DROP SEQUENCE public.strapi_workflows_stages_id_seq;
DROP TABLE public.strapi_workflows_stages;
DROP SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq;
DROP TABLE public.strapi_workflows_stage_required_to_publish_lnk;
DROP SEQUENCE public.strapi_workflows_id_seq;
DROP TABLE public.strapi_workflows;
DROP SEQUENCE public.strapi_webhooks_id_seq;
DROP TABLE public.strapi_webhooks;
DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
DROP TABLE public.strapi_transfer_tokens;
DROP SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq;
DROP TABLE public.strapi_transfer_token_permissions_token_lnk;
DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
DROP TABLE public.strapi_transfer_token_permissions;
DROP SEQUENCE public.strapi_releases_id_seq;
DROP TABLE public.strapi_releases;
DROP SEQUENCE public.strapi_release_actions_release_lnk_id_seq;
DROP TABLE public.strapi_release_actions_release_lnk;
DROP SEQUENCE public.strapi_release_actions_id_seq;
DROP TABLE public.strapi_release_actions;
DROP SEQUENCE public.strapi_migrations_internal_id_seq;
DROP TABLE public.strapi_migrations_internal;
DROP SEQUENCE public.strapi_migrations_id_seq;
DROP TABLE public.strapi_migrations;
DROP SEQUENCE public.strapi_history_versions_id_seq;
DROP TABLE public.strapi_history_versions;
DROP SEQUENCE public.strapi_database_schema_id_seq;
DROP TABLE public.strapi_database_schema;
DROP SEQUENCE public.strapi_core_store_settings_id_seq;
DROP TABLE public.strapi_core_store_settings;
DROP SEQUENCE public.strapi_api_tokens_id_seq;
DROP TABLE public.strapi_api_tokens;
DROP SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq;
DROP TABLE public.strapi_api_token_permissions_token_lnk;
DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
DROP TABLE public.strapi_api_token_permissions;
DROP SEQUENCE public.promo_banners_id_seq;
DROP TABLE public.promo_banners;
DROP SEQUENCE public.personal_parties_pages_id_seq;
DROP SEQUENCE public.personal_parties_pages_cmps_id_seq;
DROP TABLE public.personal_parties_pages_cmps;
DROP TABLE public.personal_parties_pages;
DROP SEQUENCE public.open_parties_pages_id_seq;
DROP SEQUENCE public.open_parties_pages_cmps_id_seq;
DROP TABLE public.open_parties_pages_cmps;
DROP TABLE public.open_parties_pages;
DROP SEQUENCE public.kids_games_pages_id_seq;
DROP SEQUENCE public.kids_games_pages_cmps_id_seq;
DROP TABLE public.kids_games_pages_cmps;
DROP TABLE public.kids_games_pages;
DROP SEQUENCE public.i18n_locale_id_seq;
DROP TABLE public.i18n_locale;
DROP SEQUENCE public.home_pages_id_seq;
DROP TABLE public.home_pages;
DROP SEQUENCE public.games_id_seq;
DROP TABLE public.games;
DROP SEQUENCE public.footers_id_seq;
DROP TABLE public.footers;
DROP SEQUENCE public.files_related_mph_id_seq;
DROP TABLE public.files_related_mph;
DROP SEQUENCE public.files_id_seq;
DROP SEQUENCE public.files_folder_lnk_id_seq;
DROP TABLE public.files_folder_lnk;
DROP TABLE public.files;
DROP SEQUENCE public.events_id_seq;
DROP TABLE public.events;
DROP SEQUENCE public.dance_pages_id_seq;
DROP SEQUENCE public.dance_pages_cmps_id_seq;
DROP TABLE public.dance_pages_cmps;
DROP TABLE public.dance_pages;
DROP SEQUENCE public.contacts_id_seq;
DROP TABLE public.contacts;
DROP SEQUENCE public.components_shared_trainers_id_seq;
DROP TABLE public.components_shared_trainers;
DROP SEQUENCE public.components_shared_testimonials_id_seq;
DROP TABLE public.components_shared_testimonials;
DROP SEQUENCE public.components_shared_prices_id_seq;
DROP SEQUENCE public.components_shared_prices_cmps_id_seq;
DROP TABLE public.components_shared_prices_cmps;
DROP TABLE public.components_shared_prices;
DROP SEQUENCE public.components_shared_points_id_seq;
DROP TABLE public.components_shared_points;
DROP SEQUENCE public.components_shared_page_headers_id_seq;
DROP TABLE public.components_shared_page_headers;
DROP SEQUENCE public.components_shared_fishkis_id_seq;
DROP TABLE public.components_shared_fishkis;
DROP SEQUENCE public.components_shared_faq_items_id_seq;
DROP TABLE public.components_shared_faq_items;
DROP SEQUENCE public.components_shared_dance_types_id_seq;
DROP TABLE public.components_shared_dance_types;
DROP SEQUENCE public.components_programs_programs_id_seq;
DROP TABLE public.components_programs_programs;
DROP SEQUENCE public.coffee_pages_id_seq;
DROP TABLE public.coffee_pages;
DROP SEQUENCE public.adult_games_pages_id_seq;
DROP SEQUENCE public.adult_games_pages_cmps_id_seq;
DROP TABLE public.adult_games_pages_cmps;
DROP TABLE public.adult_games_pages;
DROP SEQUENCE public.admin_users_roles_lnk_id_seq;
DROP TABLE public.admin_users_roles_lnk;
DROP SEQUENCE public.admin_users_id_seq;
DROP TABLE public.admin_users;
DROP SEQUENCE public.admin_roles_id_seq;
DROP TABLE public.admin_roles;
DROP SEQUENCE public.admin_permissions_role_lnk_id_seq;
DROP TABLE public.admin_permissions_role_lnk;
DROP SEQUENCE public.admin_permissions_id_seq;
DROP TABLE public.admin_permissions;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: adult_games_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.adult_games_pages (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.adult_games_pages OWNER TO strapi;

--
-- Name: adult_games_pages_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.adult_games_pages_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.adult_games_pages_cmps OWNER TO strapi;

--
-- Name: adult_games_pages_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.adult_games_pages_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adult_games_pages_cmps_id_seq OWNER TO strapi;

--
-- Name: adult_games_pages_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.adult_games_pages_cmps_id_seq OWNED BY public.adult_games_pages_cmps.id;


--
-- Name: adult_games_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.adult_games_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adult_games_pages_id_seq OWNER TO strapi;

--
-- Name: adult_games_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.adult_games_pages_id_seq OWNED BY public.adult_games_pages.id;


--
-- Name: coffee_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.coffee_pages (
    id integer NOT NULL,
    document_id character varying(255),
    hero_title character varying(255),
    hero_subtitle text,
    section_title character varying(255),
    description text,
    gallery_title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.coffee_pages OWNER TO strapi;

--
-- Name: coffee_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.coffee_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coffee_pages_id_seq OWNER TO strapi;

--
-- Name: coffee_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.coffee_pages_id_seq OWNED BY public.coffee_pages.id;


--
-- Name: components_programs_programs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_programs_programs (
    id integer NOT NULL,
    title character varying(255),
    description text,
    slug character varying(255),
    short_description text
);


ALTER TABLE public.components_programs_programs OWNER TO strapi;

--
-- Name: components_programs_programs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_programs_programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_programs_programs_id_seq OWNER TO strapi;

--
-- Name: components_programs_programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_programs_programs_id_seq OWNED BY public.components_programs_programs.id;


--
-- Name: components_shared_dance_types; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_dance_types (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_shared_dance_types OWNER TO strapi;

--
-- Name: components_shared_dance_types_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_dance_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_dance_types_id_seq OWNER TO strapi;

--
-- Name: components_shared_dance_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_dance_types_id_seq OWNED BY public.components_shared_dance_types.id;


--
-- Name: components_shared_faq_items; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_faq_items (
    id integer NOT NULL,
    question character varying(255),
    answer text
);


ALTER TABLE public.components_shared_faq_items OWNER TO strapi;

--
-- Name: components_shared_faq_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_faq_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_faq_items_id_seq OWNER TO strapi;

--
-- Name: components_shared_faq_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_faq_items_id_seq OWNED BY public.components_shared_faq_items.id;


--
-- Name: components_shared_fishkis; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_fishkis (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_shared_fishkis OWNER TO strapi;

--
-- Name: components_shared_fishkis_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_fishkis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_fishkis_id_seq OWNER TO strapi;

--
-- Name: components_shared_fishkis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_fishkis_id_seq OWNED BY public.components_shared_fishkis.id;


--
-- Name: components_shared_page_headers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_page_headers (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_shared_page_headers OWNER TO strapi;

--
-- Name: components_shared_page_headers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_page_headers_id_seq OWNER TO strapi;

--
-- Name: components_shared_page_headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_page_headers_id_seq OWNED BY public.components_shared_page_headers.id;


--
-- Name: components_shared_points; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_points (
    id integer NOT NULL,
    point character varying(255)
);


ALTER TABLE public.components_shared_points OWNER TO strapi;

--
-- Name: components_shared_points_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_points_id_seq OWNER TO strapi;

--
-- Name: components_shared_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_points_id_seq OWNED BY public.components_shared_points.id;


--
-- Name: components_shared_prices; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_prices (
    id integer NOT NULL,
    title character varying(255),
    short_description character varying(255),
    price integer
);


ALTER TABLE public.components_shared_prices OWNER TO strapi;

--
-- Name: components_shared_prices_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_prices_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_prices_cmps OWNER TO strapi;

--
-- Name: components_shared_prices_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_prices_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_prices_cmps_id_seq OWNER TO strapi;

--
-- Name: components_shared_prices_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_prices_cmps_id_seq OWNED BY public.components_shared_prices_cmps.id;


--
-- Name: components_shared_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_prices_id_seq OWNER TO strapi;

--
-- Name: components_shared_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_prices_id_seq OWNED BY public.components_shared_prices.id;


--
-- Name: components_shared_testimonials; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_testimonials (
    id integer NOT NULL,
    text text,
    author character varying(255)
);


ALTER TABLE public.components_shared_testimonials OWNER TO strapi;

--
-- Name: components_shared_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_testimonials_id_seq OWNER TO strapi;

--
-- Name: components_shared_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_testimonials_id_seq OWNED BY public.components_shared_testimonials.id;


--
-- Name: components_shared_trainers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_shared_trainers (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_shared_trainers OWNER TO strapi;

--
-- Name: components_shared_trainers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_shared_trainers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_trainers_id_seq OWNER TO strapi;

--
-- Name: components_shared_trainers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_shared_trainers_id_seq OWNED BY public.components_shared_trainers.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    phone character varying(255),
    message text,
    form_type character varying(255),
    additional_data jsonb,
    processed boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.contacts OWNER TO strapi;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO strapi;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: dance_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.dance_pages (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.dance_pages OWNER TO strapi;

--
-- Name: dance_pages_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.dance_pages_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.dance_pages_cmps OWNER TO strapi;

--
-- Name: dance_pages_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.dance_pages_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dance_pages_cmps_id_seq OWNER TO strapi;

--
-- Name: dance_pages_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.dance_pages_cmps_id_seq OWNED BY public.dance_pages_cmps.id;


--
-- Name: dance_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.dance_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dance_pages_id_seq OWNER TO strapi;

--
-- Name: dance_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.dance_pages_id_seq OWNED BY public.dance_pages.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.events (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    date timestamp(6) without time zone,
    type character varying(255),
    short_description text,
    full_description text,
    price numeric(10,2),
    max_participants integer,
    current_participants integer,
    location character varying(255),
    duration character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    event_link character varying(255)
);


ALTER TABLE public.events OWNER TO strapi;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO strapi;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_lnk_id_seq OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_mph_id_seq OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: footers; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.footers (
    id integer NOT NULL,
    document_id character varying(255),
    number character varying(255),
    email character varying(255),
    adress character varying(255),
    rutube_link character varying(255),
    telegram_link character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    vk_link character varying(255)
);


ALTER TABLE public.footers OWNER TO strapi;

--
-- Name: footers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.footers_id_seq OWNER TO strapi;

--
-- Name: footers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.footers_id_seq OWNED BY public.footers.id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.games (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    game_type character varying(255),
    audience_type character varying(255),
    age_groups jsonb,
    description text,
    has_premium_version boolean,
    premium_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.games OWNER TO strapi;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO strapi;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: home_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.home_pages (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    about_title character varying(255),
    about_description text,
    about_full_description text,
    founder_quote text,
    founder_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.home_pages OWNER TO strapi;

--
-- Name: home_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.home_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_pages_id_seq OWNER TO strapi;

--
-- Name: home_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.home_pages_id_seq OWNED BY public.home_pages.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: kids_games_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.kids_games_pages (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.kids_games_pages OWNER TO strapi;

--
-- Name: kids_games_pages_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.kids_games_pages_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.kids_games_pages_cmps OWNER TO strapi;

--
-- Name: kids_games_pages_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.kids_games_pages_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kids_games_pages_cmps_id_seq OWNER TO strapi;

--
-- Name: kids_games_pages_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.kids_games_pages_cmps_id_seq OWNED BY public.kids_games_pages_cmps.id;


--
-- Name: kids_games_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.kids_games_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kids_games_pages_id_seq OWNER TO strapi;

--
-- Name: kids_games_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.kids_games_pages_id_seq OWNED BY public.kids_games_pages.id;


--
-- Name: open_parties_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.open_parties_pages (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.open_parties_pages OWNER TO strapi;

--
-- Name: open_parties_pages_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.open_parties_pages_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.open_parties_pages_cmps OWNER TO strapi;

--
-- Name: open_parties_pages_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.open_parties_pages_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.open_parties_pages_cmps_id_seq OWNER TO strapi;

--
-- Name: open_parties_pages_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.open_parties_pages_cmps_id_seq OWNED BY public.open_parties_pages_cmps.id;


--
-- Name: open_parties_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.open_parties_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.open_parties_pages_id_seq OWNER TO strapi;

--
-- Name: open_parties_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.open_parties_pages_id_seq OWNED BY public.open_parties_pages.id;


--
-- Name: personal_parties_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.personal_parties_pages (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.personal_parties_pages OWNER TO strapi;

--
-- Name: personal_parties_pages_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.personal_parties_pages_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.personal_parties_pages_cmps OWNER TO strapi;

--
-- Name: personal_parties_pages_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.personal_parties_pages_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_parties_pages_cmps_id_seq OWNER TO strapi;

--
-- Name: personal_parties_pages_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.personal_parties_pages_cmps_id_seq OWNED BY public.personal_parties_pages_cmps.id;


--
-- Name: personal_parties_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.personal_parties_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_parties_pages_id_seq OWNER TO strapi;

--
-- Name: personal_parties_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.personal_parties_pages_id_seq OWNED BY public.personal_parties_pages.id;


--
-- Name: promo_banners; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.promo_banners (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    button_text character varying(255),
    button_link character varying(255),
    is_external_link boolean,
    is_active boolean
);


ALTER TABLE public.promo_banners OWNER TO strapi;

--
-- Name: promo_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.promo_banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promo_banners_id_seq OWNER TO strapi;

--
-- Name: promo_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.promo_banners_id_seq OWNED BY public.promo_banners.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_history_versions_id_seq OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_internal_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_release_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_releases_id_seq OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: theme_party_events; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.theme_party_events (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    slug character varying(255),
    description jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.theme_party_events OWNER TO strapi;

--
-- Name: theme_party_events_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.theme_party_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theme_party_events_id_seq OWNER TO strapi;

--
-- Name: theme_party_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.theme_party_events_id_seq OWNED BY public.theme_party_events.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_lnk_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: adult_games_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.adult_games_pages ALTER COLUMN id SET DEFAULT nextval('public.adult_games_pages_id_seq'::regclass);


--
-- Name: adult_games_pages_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.adult_games_pages_cmps ALTER COLUMN id SET DEFAULT nextval('public.adult_games_pages_cmps_id_seq'::regclass);


--
-- Name: coffee_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.coffee_pages ALTER COLUMN id SET DEFAULT nextval('public.coffee_pages_id_seq'::regclass);


--
-- Name: components_programs_programs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_programs_programs ALTER COLUMN id SET DEFAULT nextval('public.components_programs_programs_id_seq'::regclass);


--
-- Name: components_shared_dance_types id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_dance_types ALTER COLUMN id SET DEFAULT nextval('public.components_shared_dance_types_id_seq'::regclass);


--
-- Name: components_shared_faq_items id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_faq_items ALTER COLUMN id SET DEFAULT nextval('public.components_shared_faq_items_id_seq'::regclass);


--
-- Name: components_shared_fishkis id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_fishkis ALTER COLUMN id SET DEFAULT nextval('public.components_shared_fishkis_id_seq'::regclass);


--
-- Name: components_shared_page_headers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_shared_page_headers_id_seq'::regclass);


--
-- Name: components_shared_points id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_points ALTER COLUMN id SET DEFAULT nextval('public.components_shared_points_id_seq'::regclass);


--
-- Name: components_shared_prices id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_prices ALTER COLUMN id SET DEFAULT nextval('public.components_shared_prices_id_seq'::regclass);


--
-- Name: components_shared_prices_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_prices_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_shared_prices_cmps_id_seq'::regclass);


--
-- Name: components_shared_testimonials id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_testimonials ALTER COLUMN id SET DEFAULT nextval('public.components_shared_testimonials_id_seq'::regclass);


--
-- Name: components_shared_trainers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_trainers ALTER COLUMN id SET DEFAULT nextval('public.components_shared_trainers_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: dance_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.dance_pages ALTER COLUMN id SET DEFAULT nextval('public.dance_pages_id_seq'::regclass);


--
-- Name: dance_pages_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.dance_pages_cmps ALTER COLUMN id SET DEFAULT nextval('public.dance_pages_cmps_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: footers id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers ALTER COLUMN id SET DEFAULT nextval('public.footers_id_seq'::regclass);


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: home_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages ALTER COLUMN id SET DEFAULT nextval('public.home_pages_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: kids_games_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.kids_games_pages ALTER COLUMN id SET DEFAULT nextval('public.kids_games_pages_id_seq'::regclass);


--
-- Name: kids_games_pages_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.kids_games_pages_cmps ALTER COLUMN id SET DEFAULT nextval('public.kids_games_pages_cmps_id_seq'::regclass);


--
-- Name: open_parties_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.open_parties_pages ALTER COLUMN id SET DEFAULT nextval('public.open_parties_pages_id_seq'::regclass);


--
-- Name: open_parties_pages_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.open_parties_pages_cmps ALTER COLUMN id SET DEFAULT nextval('public.open_parties_pages_cmps_id_seq'::regclass);


--
-- Name: personal_parties_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.personal_parties_pages ALTER COLUMN id SET DEFAULT nextval('public.personal_parties_pages_id_seq'::regclass);


--
-- Name: personal_parties_pages_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.personal_parties_pages_cmps ALTER COLUMN id SET DEFAULT nextval('public.personal_parties_pages_cmps_id_seq'::regclass);


--
-- Name: promo_banners id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.promo_banners ALTER COLUMN id SET DEFAULT nextval('public.promo_banners_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: theme_party_events id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.theme_party_events ALTER COLUMN id SET DEFAULT nextval('public.theme_party_events_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	i4vah17by8t8o392royqg1do	plugin::content-manager.explorer.create	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:28.322	2025-05-13 21:54:28.322	2025-05-13 21:54:28.323	\N	\N	\N
2	jz0t8orj7yhosdl87lndl3yl	plugin::content-manager.explorer.create	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	[]	2025-05-13 21:54:28.337	2025-05-13 21:54:28.337	2025-05-13 21:54:28.337	\N	\N	\N
3	g50khhd5zhjrz7ckmdlxhpx2	plugin::content-manager.explorer.create	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	[]	2025-05-13 21:54:28.346	2025-05-13 21:54:28.346	2025-05-13 21:54:28.347	\N	\N	\N
4	v5wcsyi4upgkaa7dytbfgmmd	plugin::content-manager.explorer.create	{}	api::dance-page.dance-page	{"fields": ["Title", "Description"]}	[]	2025-05-13 21:54:28.357	2025-05-13 21:54:28.357	2025-05-13 21:54:28.357	\N	\N	\N
5	trawrw3pjhvpzp1wd2kyevy2	plugin::content-manager.explorer.create	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug"]}	[]	2025-05-13 21:54:28.367	2025-05-13 21:54:28.367	2025-05-13 21:54:28.367	\N	\N	\N
6	oucombarjepf2iyvsk8b1nlx	plugin::content-manager.explorer.create	{}	api::footer.footer	{"fields": ["number", "email", "adress", "rutubeLink", "telegramLink"]}	[]	2025-05-13 21:54:28.377	2025-05-13 21:54:28.377	2025-05-13 21:54:28.377	\N	\N	\N
7	sgwtxs536zybxgafhau2cu79	plugin::content-manager.explorer.create	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	[]	2025-05-13 21:54:28.387	2025-05-13 21:54:28.387	2025-05-13 21:54:28.387	\N	\N	\N
9	gnjb9y3josro8jp0kzlgtfot	plugin::content-manager.explorer.create	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	[]	2025-05-13 21:54:28.407	2025-05-13 21:54:28.407	2025-05-13 21:54:28.407	\N	\N	\N
10	pmgh8a4iv9zbsb8ws0apho49	plugin::content-manager.explorer.create	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:28.418	2025-05-13 21:54:28.418	2025-05-13 21:54:28.418	\N	\N	\N
12	u94huidaoqrlhtsjnj8t6qke	plugin::content-manager.explorer.create	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	[]	2025-05-13 21:54:28.438	2025-05-13 21:54:28.438	2025-05-13 21:54:28.438	\N	\N	\N
13	cbia0l60ai4pobbos1xe76ip	plugin::content-manager.explorer.read	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:28.449	2025-05-13 21:54:28.449	2025-05-13 21:54:28.449	\N	\N	\N
14	opdeoezrh8nw4wxai0is50di	plugin::content-manager.explorer.read	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	[]	2025-05-13 21:54:28.459	2025-05-13 21:54:28.459	2025-05-13 21:54:28.459	\N	\N	\N
15	mmnetywk343kqmhkbzdsoo6b	plugin::content-manager.explorer.read	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	[]	2025-05-13 21:54:28.471	2025-05-13 21:54:28.471	2025-05-13 21:54:28.471	\N	\N	\N
16	zky6nm17wwv32dqus9hz4opj	plugin::content-manager.explorer.read	{}	api::dance-page.dance-page	{"fields": ["Title", "Description"]}	[]	2025-05-13 21:54:28.483	2025-05-13 21:54:28.483	2025-05-13 21:54:28.483	\N	\N	\N
17	pnrok6g9k8gfg16eppso9pnn	plugin::content-manager.explorer.read	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug"]}	[]	2025-05-13 21:54:28.496	2025-05-13 21:54:28.496	2025-05-13 21:54:28.496	\N	\N	\N
18	s6df1zhhxnp4z4b1bhbkwowm	plugin::content-manager.explorer.read	{}	api::footer.footer	{"fields": ["number", "email", "adress", "rutubeLink", "telegramLink"]}	[]	2025-05-13 21:54:28.506	2025-05-13 21:54:28.506	2025-05-13 21:54:28.506	\N	\N	\N
19	xk2y0v9w8fqwmbpqc4usls0f	plugin::content-manager.explorer.read	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	[]	2025-05-13 21:54:28.516	2025-05-13 21:54:28.516	2025-05-13 21:54:28.517	\N	\N	\N
21	heowujyd5p5w3gi16ey1yfkb	plugin::content-manager.explorer.read	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	[]	2025-05-13 21:54:28.538	2025-05-13 21:54:28.538	2025-05-13 21:54:28.538	\N	\N	\N
22	m9wvn4kzsjp8ordwycikqro5	plugin::content-manager.explorer.read	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:28.548	2025-05-13 21:54:28.548	2025-05-13 21:54:28.548	\N	\N	\N
24	jqwzm1yvz6eec1nraxc5civ0	plugin::content-manager.explorer.read	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	[]	2025-05-13 21:54:28.571	2025-05-13 21:54:28.571	2025-05-13 21:54:28.571	\N	\N	\N
25	jfkd5glwps5ar3rxetp8tcq7	plugin::content-manager.explorer.update	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:28.581	2025-05-13 21:54:28.581	2025-05-13 21:54:28.581	\N	\N	\N
11	xukxjqpe2olrwyy15aullnb1	plugin::content-manager.explorer.create	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription"]}	[]	2025-05-13 21:54:28.428	2025-05-15 22:42:07.998	2025-05-13 21:54:28.429	\N	\N	\N
23	huboht6ztneuzlfb7d5u6hmu	plugin::content-manager.explorer.read	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription"]}	[]	2025-05-13 21:54:28.56	2025-05-15 22:42:07.998	2025-05-13 21:54:28.56	\N	\N	\N
26	kypkwbjjpk340sz9x7jdk1t9	plugin::content-manager.explorer.update	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	[]	2025-05-13 21:54:28.594	2025-05-13 21:54:28.594	2025-05-13 21:54:28.594	\N	\N	\N
179	qdfkcb08zirkrwl5rx4y743t	plugin::content-manager.explorer.publish	{}	api::footer.footer	{}	[]	2025-05-13 21:54:30.381	2025-05-13 21:54:30.381	2025-05-13 21:54:30.381	\N	\N	\N
27	b8d03ddk2dnlwoss1bjwe5df	plugin::content-manager.explorer.update	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	[]	2025-05-13 21:54:28.607	2025-05-13 21:54:28.607	2025-05-13 21:54:28.608	\N	\N	\N
28	hepzvo0hwh8cgii35n0slg51	plugin::content-manager.explorer.update	{}	api::dance-page.dance-page	{"fields": ["Title", "Description"]}	[]	2025-05-13 21:54:28.618	2025-05-13 21:54:28.618	2025-05-13 21:54:28.618	\N	\N	\N
29	ja7dg1h4581meda2dd8fm9vz	plugin::content-manager.explorer.update	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug"]}	[]	2025-05-13 21:54:28.627	2025-05-13 21:54:28.627	2025-05-13 21:54:28.628	\N	\N	\N
30	c2pk4ldb455whi0t4ihqgxd2	plugin::content-manager.explorer.update	{}	api::footer.footer	{"fields": ["number", "email", "adress", "rutubeLink", "telegramLink"]}	[]	2025-05-13 21:54:28.637	2025-05-13 21:54:28.637	2025-05-13 21:54:28.637	\N	\N	\N
31	sp98uruyphx2yxwnuz3pj4pz	plugin::content-manager.explorer.update	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	[]	2025-05-13 21:54:28.647	2025-05-13 21:54:28.647	2025-05-13 21:54:28.647	\N	\N	\N
33	p5g5y1j1ihem0dkkiobh59wo	plugin::content-manager.explorer.update	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	[]	2025-05-13 21:54:28.667	2025-05-13 21:54:28.667	2025-05-13 21:54:28.667	\N	\N	\N
34	y0hwet2deeeiqvwkqy2n5kzd	plugin::content-manager.explorer.update	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:28.677	2025-05-13 21:54:28.677	2025-05-13 21:54:28.677	\N	\N	\N
36	ngt6y012yvdxld4a2h0y8krk	plugin::content-manager.explorer.update	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	[]	2025-05-13 21:54:28.697	2025-05-13 21:54:28.697	2025-05-13 21:54:28.697	\N	\N	\N
37	ke2zdu8sw0v6oru6vbkxrres	plugin::content-manager.explorer.delete	{}	api::adult-games-page.adult-games-page	{}	[]	2025-05-13 21:54:28.706	2025-05-13 21:54:28.706	2025-05-13 21:54:28.706	\N	\N	\N
38	n43sw2mcidyg3nchsgfz1vss	plugin::content-manager.explorer.delete	{}	api::coffee-page.coffee-page	{}	[]	2025-05-13 21:54:28.716	2025-05-13 21:54:28.716	2025-05-13 21:54:28.716	\N	\N	\N
39	mf2913mr6kvksl162pg9amls	plugin::content-manager.explorer.delete	{}	api::contact.contact	{}	[]	2025-05-13 21:54:28.731	2025-05-13 21:54:28.731	2025-05-13 21:54:28.731	\N	\N	\N
40	bs4okuop3w5ogl3ie0bc5ceq	plugin::content-manager.explorer.delete	{}	api::dance-page.dance-page	{}	[]	2025-05-13 21:54:28.745	2025-05-13 21:54:28.745	2025-05-13 21:54:28.745	\N	\N	\N
41	cbm6wrg5s5oehmm093ih6e2g	plugin::content-manager.explorer.delete	{}	api::event.event	{}	[]	2025-05-13 21:54:28.764	2025-05-13 21:54:28.764	2025-05-13 21:54:28.764	\N	\N	\N
42	r6ai7iqt9861ttym4sfkh04k	plugin::content-manager.explorer.delete	{}	api::footer.footer	{}	[]	2025-05-13 21:54:28.775	2025-05-13 21:54:28.775	2025-05-13 21:54:28.775	\N	\N	\N
43	l89e4obowvz0iafk9lizlvw6	plugin::content-manager.explorer.delete	{}	api::game.game	{}	[]	2025-05-13 21:54:28.785	2025-05-13 21:54:28.785	2025-05-13 21:54:28.785	\N	\N	\N
44	j1bsb8gd6v87ke7hzye3lhl2	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	[]	2025-05-13 21:54:28.796	2025-05-13 21:54:28.796	2025-05-13 21:54:28.796	\N	\N	\N
45	ia9c48ufywmid18jw5pn4ddw	plugin::content-manager.explorer.delete	{}	api::kids-games-page.kids-games-page	{}	[]	2025-05-13 21:54:28.806	2025-05-13 21:54:28.806	2025-05-13 21:54:28.807	\N	\N	\N
46	zsvlxf2t94b8payz5kd2qzr2	plugin::content-manager.explorer.delete	{}	api::open-parties-page.open-parties-page	{}	[]	2025-05-13 21:54:28.817	2025-05-13 21:54:28.817	2025-05-13 21:54:28.817	\N	\N	\N
47	kpliu95qxbioqqsawmgzamx5	plugin::content-manager.explorer.delete	{}	api::personal-parties-page.personal-parties-page	{}	[]	2025-05-13 21:54:28.827	2025-05-13 21:54:28.827	2025-05-13 21:54:28.827	\N	\N	\N
48	bee6uq9pfwx5amw75glsulwy	plugin::content-manager.explorer.delete	{}	api::theme-party-event.theme-party-event	{}	[]	2025-05-13 21:54:28.838	2025-05-13 21:54:28.838	2025-05-13 21:54:28.838	\N	\N	\N
49	mbl4dz2lmcodo95bxdnwfcm7	plugin::content-manager.explorer.publish	{}	api::adult-games-page.adult-games-page	{}	[]	2025-05-13 21:54:28.848	2025-05-13 21:54:28.848	2025-05-13 21:54:28.848	\N	\N	\N
50	gaujfxc62691imfc61hlqkpd	plugin::content-manager.explorer.publish	{}	api::coffee-page.coffee-page	{}	[]	2025-05-13 21:54:28.859	2025-05-13 21:54:28.859	2025-05-13 21:54:28.859	\N	\N	\N
51	vw6ed0l3pz33zgokezgh62j7	plugin::content-manager.explorer.publish	{}	api::contact.contact	{}	[]	2025-05-13 21:54:28.869	2025-05-13 21:54:28.869	2025-05-13 21:54:28.869	\N	\N	\N
52	vriqbsxplwd7axxgf3sblb1d	plugin::content-manager.explorer.publish	{}	api::dance-page.dance-page	{}	[]	2025-05-13 21:54:28.879	2025-05-13 21:54:28.879	2025-05-13 21:54:28.879	\N	\N	\N
53	jurd3mlcgcnpswota5tq77ov	plugin::content-manager.explorer.publish	{}	api::event.event	{}	[]	2025-05-13 21:54:28.89	2025-05-13 21:54:28.89	2025-05-13 21:54:28.89	\N	\N	\N
54	h7gqxnidmxpj0tsdgzqfgthl	plugin::content-manager.explorer.publish	{}	api::footer.footer	{}	[]	2025-05-13 21:54:28.901	2025-05-13 21:54:28.901	2025-05-13 21:54:28.902	\N	\N	\N
55	scegj9u8rajl9k5f8efo93no	plugin::content-manager.explorer.publish	{}	api::game.game	{}	[]	2025-05-13 21:54:28.911	2025-05-13 21:54:28.911	2025-05-13 21:54:28.911	\N	\N	\N
56	tapomhkqvx086q33gzcis5ah	plugin::content-manager.explorer.publish	{}	api::home-page.home-page	{}	[]	2025-05-13 21:54:28.921	2025-05-13 21:54:28.921	2025-05-13 21:54:28.921	\N	\N	\N
57	bvuhc5ipk0nqwq9mi87lyehp	plugin::content-manager.explorer.publish	{}	api::kids-games-page.kids-games-page	{}	[]	2025-05-13 21:54:28.932	2025-05-13 21:54:28.932	2025-05-13 21:54:28.933	\N	\N	\N
58	xugqxdrxb7c91v8j5r4zu073	plugin::content-manager.explorer.publish	{}	api::open-parties-page.open-parties-page	{}	[]	2025-05-13 21:54:28.942	2025-05-13 21:54:28.942	2025-05-13 21:54:28.942	\N	\N	\N
59	wpomb3scnmyhh6ew9s5wiu2z	plugin::content-manager.explorer.publish	{}	api::personal-parties-page.personal-parties-page	{}	[]	2025-05-13 21:54:28.952	2025-05-13 21:54:28.952	2025-05-13 21:54:28.952	\N	\N	\N
60	lrt68thy8xj6xig71jo9getx	plugin::content-manager.explorer.publish	{}	api::theme-party-event.theme-party-event	{}	[]	2025-05-13 21:54:28.962	2025-05-13 21:54:28.962	2025-05-13 21:54:28.962	\N	\N	\N
61	kd6ym2robztnr3xxpz1xk3b4	plugin::upload.read	{}	\N	{}	[]	2025-05-13 21:54:28.973	2025-05-13 21:54:28.973	2025-05-13 21:54:28.973	\N	\N	\N
62	dg7yqdm46ygk5ul1qhfzudel	plugin::upload.configure-view	{}	\N	{}	[]	2025-05-13 21:54:28.983	2025-05-13 21:54:28.983	2025-05-13 21:54:28.983	\N	\N	\N
35	m3wemo4ugh987w3ji6gv20dm	plugin::content-manager.explorer.update	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription"]}	[]	2025-05-13 21:54:28.687	2025-05-15 22:42:07.998	2025-05-13 21:54:28.687	\N	\N	\N
63	kizvnbgtdtuzt1yv2fb3i1eg	plugin::upload.assets.create	{}	\N	{}	[]	2025-05-13 21:54:28.993	2025-05-13 21:54:28.993	2025-05-13 21:54:28.993	\N	\N	\N
64	ycqht2hua85lx55zf295nbzp	plugin::upload.assets.update	{}	\N	{}	[]	2025-05-13 21:54:29.004	2025-05-13 21:54:29.004	2025-05-13 21:54:29.004	\N	\N	\N
65	z07t7qrazjgp4xmbaf3tsacl	plugin::upload.assets.download	{}	\N	{}	[]	2025-05-13 21:54:29.015	2025-05-13 21:54:29.015	2025-05-13 21:54:29.015	\N	\N	\N
66	nzo59qznjtszpcr33kklcy2u	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-05-13 21:54:29.026	2025-05-13 21:54:29.026	2025-05-13 21:54:29.026	\N	\N	\N
180	ccxh5j69rsatau18ix01u5cb	plugin::content-manager.explorer.publish	{}	api::game.game	{}	[]	2025-05-13 21:54:30.391	2025-05-13 21:54:30.391	2025-05-13 21:54:30.391	\N	\N	\N
67	yd3q0kmeqmlssrk0qwytb2f3	plugin::content-manager.explorer.create	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	["admin::is-creator"]	2025-05-13 21:54:29.048	2025-05-13 21:54:29.048	2025-05-13 21:54:29.048	\N	\N	\N
68	d3enp4j4u4kemj92j25a7rzp	plugin::content-manager.explorer.create	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	["admin::is-creator"]	2025-05-13 21:54:29.069	2025-05-13 21:54:29.069	2025-05-13 21:54:29.069	\N	\N	\N
69	ig5p3fw92w3067sqoh6guiy8	plugin::content-manager.explorer.create	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	["admin::is-creator"]	2025-05-13 21:54:29.079	2025-05-13 21:54:29.079	2025-05-13 21:54:29.079	\N	\N	\N
70	z5wejsu1xrzyvciw5ux41ods	plugin::content-manager.explorer.create	{}	api::dance-page.dance-page	{"fields": ["Title", "Description"]}	["admin::is-creator"]	2025-05-13 21:54:29.093	2025-05-13 21:54:29.093	2025-05-13 21:54:29.093	\N	\N	\N
71	ahajpd7xjg86s2g81ehvngdh	plugin::content-manager.explorer.create	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug"]}	["admin::is-creator"]	2025-05-13 21:54:29.113	2025-05-13 21:54:29.113	2025-05-13 21:54:29.113	\N	\N	\N
72	mh5y012zupc4tcqlzwcaix96	plugin::content-manager.explorer.create	{}	api::footer.footer	{"fields": ["number", "email", "adress", "rutubeLink", "telegramLink"]}	["admin::is-creator"]	2025-05-13 21:54:29.129	2025-05-13 21:54:29.129	2025-05-13 21:54:29.13	\N	\N	\N
73	uxtnfliv2u9ioxpg7t8cqp7g	plugin::content-manager.explorer.create	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	["admin::is-creator"]	2025-05-13 21:54:29.146	2025-05-13 21:54:29.146	2025-05-13 21:54:29.146	\N	\N	\N
75	hlxewp5gl2hp7okz0ba4zrd4	plugin::content-manager.explorer.create	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	["admin::is-creator"]	2025-05-13 21:54:29.179	2025-05-13 21:54:29.179	2025-05-13 21:54:29.179	\N	\N	\N
76	wgxdf6gu6zrnk00nfvcgui0h	plugin::content-manager.explorer.create	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	["admin::is-creator"]	2025-05-13 21:54:29.188	2025-05-13 21:54:29.188	2025-05-13 21:54:29.189	\N	\N	\N
78	lbp490qdazbbfye2n4bz2388	plugin::content-manager.explorer.create	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	["admin::is-creator"]	2025-05-13 21:54:29.211	2025-05-13 21:54:29.211	2025-05-13 21:54:29.211	\N	\N	\N
79	m16x5g2smmbyq4sxnhlqe93d	plugin::content-manager.explorer.read	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	["admin::is-creator"]	2025-05-13 21:54:29.221	2025-05-13 21:54:29.221	2025-05-13 21:54:29.221	\N	\N	\N
80	ifr2u3czraqs6rg4v5opkxln	plugin::content-manager.explorer.read	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	["admin::is-creator"]	2025-05-13 21:54:29.234	2025-05-13 21:54:29.234	2025-05-13 21:54:29.234	\N	\N	\N
81	uf50e8twwmozptzq60pr7f37	plugin::content-manager.explorer.read	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	["admin::is-creator"]	2025-05-13 21:54:29.246	2025-05-13 21:54:29.246	2025-05-13 21:54:29.247	\N	\N	\N
82	rmtlue5e9d6aqd8mus3lkeeg	plugin::content-manager.explorer.read	{}	api::dance-page.dance-page	{"fields": ["Title", "Description"]}	["admin::is-creator"]	2025-05-13 21:54:29.262	2025-05-13 21:54:29.262	2025-05-13 21:54:29.262	\N	\N	\N
83	zv2f2aptwco0my4jzumshrqv	plugin::content-manager.explorer.read	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug"]}	["admin::is-creator"]	2025-05-13 21:54:29.277	2025-05-13 21:54:29.277	2025-05-13 21:54:29.277	\N	\N	\N
84	urnprumyz19dsc42u6znxavf	plugin::content-manager.explorer.read	{}	api::footer.footer	{"fields": ["number", "email", "adress", "rutubeLink", "telegramLink"]}	["admin::is-creator"]	2025-05-13 21:54:29.289	2025-05-13 21:54:29.289	2025-05-13 21:54:29.289	\N	\N	\N
85	jwjzz6ozslh1qu0ubwerz950	plugin::content-manager.explorer.read	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	["admin::is-creator"]	2025-05-13 21:54:29.299	2025-05-13 21:54:29.299	2025-05-13 21:54:29.299	\N	\N	\N
87	bhvwsfnpk360xzqcedjwclqf	plugin::content-manager.explorer.read	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	["admin::is-creator"]	2025-05-13 21:54:29.318	2025-05-13 21:54:29.318	2025-05-13 21:54:29.318	\N	\N	\N
88	w7rcdurffit9fuecmmu5cdnr	plugin::content-manager.explorer.read	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	["admin::is-creator"]	2025-05-13 21:54:29.329	2025-05-13 21:54:29.329	2025-05-13 21:54:29.329	\N	\N	\N
77	e8p63a9x4uvb9f84ydnkngz7	plugin::content-manager.explorer.create	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription"]}	["admin::is-creator"]	2025-05-13 21:54:29.2	2025-05-15 22:42:07.998	2025-05-13 21:54:29.2	\N	\N	\N
90	le22kckcthd5kna29d0khdwn	plugin::content-manager.explorer.read	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	["admin::is-creator"]	2025-05-13 21:54:29.35	2025-05-13 21:54:29.35	2025-05-13 21:54:29.35	\N	\N	\N
91	qnz3bhvd1ins85evzb7jg3vs	plugin::content-manager.explorer.update	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	["admin::is-creator"]	2025-05-13 21:54:29.362	2025-05-13 21:54:29.362	2025-05-13 21:54:29.362	\N	\N	\N
92	k0izebtief113fhgm229xz3n	plugin::content-manager.explorer.update	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	["admin::is-creator"]	2025-05-13 21:54:29.372	2025-05-13 21:54:29.372	2025-05-13 21:54:29.372	\N	\N	\N
93	ufaql3z5x3xy21o0kycpzdfq	plugin::content-manager.explorer.update	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	["admin::is-creator"]	2025-05-13 21:54:29.383	2025-05-13 21:54:29.383	2025-05-13 21:54:29.383	\N	\N	\N
94	bgs3aoc1t4gn7xxg3i6soyp0	plugin::content-manager.explorer.update	{}	api::dance-page.dance-page	{"fields": ["Title", "Description"]}	["admin::is-creator"]	2025-05-13 21:54:29.392	2025-05-13 21:54:29.392	2025-05-13 21:54:29.392	\N	\N	\N
95	jek075lc4xph3hiu8ynlipam	plugin::content-manager.explorer.update	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug"]}	["admin::is-creator"]	2025-05-13 21:54:29.403	2025-05-13 21:54:29.403	2025-05-13 21:54:29.403	\N	\N	\N
96	c9why6oexn361ni4468hytwt	plugin::content-manager.explorer.update	{}	api::footer.footer	{"fields": ["number", "email", "adress", "rutubeLink", "telegramLink"]}	["admin::is-creator"]	2025-05-13 21:54:29.413	2025-05-13 21:54:29.413	2025-05-13 21:54:29.413	\N	\N	\N
97	mr3badg7jajfp8t5a4dn6714	plugin::content-manager.explorer.update	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	["admin::is-creator"]	2025-05-13 21:54:29.425	2025-05-13 21:54:29.425	2025-05-13 21:54:29.425	\N	\N	\N
99	b2gkvcsagzh7g20tpbri5ye5	plugin::content-manager.explorer.update	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	["admin::is-creator"]	2025-05-13 21:54:29.445	2025-05-13 21:54:29.445	2025-05-13 21:54:29.446	\N	\N	\N
100	fmbdczdnyixc5mqc6hovm66c	plugin::content-manager.explorer.update	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	["admin::is-creator"]	2025-05-13 21:54:29.456	2025-05-13 21:54:29.456	2025-05-13 21:54:29.456	\N	\N	\N
102	eg5w9rdm4nvqytp3jy1scxjx	plugin::content-manager.explorer.update	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	["admin::is-creator"]	2025-05-13 21:54:29.477	2025-05-13 21:54:29.477	2025-05-13 21:54:29.477	\N	\N	\N
103	q2iumou378wmej8nedwjdqzj	plugin::content-manager.explorer.delete	{}	api::adult-games-page.adult-games-page	{}	["admin::is-creator"]	2025-05-13 21:54:29.487	2025-05-13 21:54:29.487	2025-05-13 21:54:29.487	\N	\N	\N
104	yeupvearcy7fllbao8mz21k6	plugin::content-manager.explorer.delete	{}	api::coffee-page.coffee-page	{}	["admin::is-creator"]	2025-05-13 21:54:29.497	2025-05-13 21:54:29.497	2025-05-13 21:54:29.497	\N	\N	\N
105	wakc1o2asmaumhq18et246dz	plugin::content-manager.explorer.delete	{}	api::contact.contact	{}	["admin::is-creator"]	2025-05-13 21:54:29.508	2025-05-13 21:54:29.508	2025-05-13 21:54:29.508	\N	\N	\N
106	rud6ynd90gffk4tssefhh6w9	plugin::content-manager.explorer.delete	{}	api::dance-page.dance-page	{}	["admin::is-creator"]	2025-05-13 21:54:29.518	2025-05-13 21:54:29.518	2025-05-13 21:54:29.518	\N	\N	\N
107	tfuiatuxwfsdbp3iii25awvs	plugin::content-manager.explorer.delete	{}	api::event.event	{}	["admin::is-creator"]	2025-05-13 21:54:29.528	2025-05-13 21:54:29.528	2025-05-13 21:54:29.528	\N	\N	\N
108	z5110l3gs17p3vk4yk0r87g8	plugin::content-manager.explorer.delete	{}	api::footer.footer	{}	["admin::is-creator"]	2025-05-13 21:54:29.541	2025-05-13 21:54:29.541	2025-05-13 21:54:29.541	\N	\N	\N
109	wfknnlpribalmdentpkoqcrb	plugin::content-manager.explorer.delete	{}	api::game.game	{}	["admin::is-creator"]	2025-05-13 21:54:29.55	2025-05-13 21:54:29.55	2025-05-13 21:54:29.55	\N	\N	\N
110	wbsm4q639nr6bs5y9n8p7bzg	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	["admin::is-creator"]	2025-05-13 21:54:29.56	2025-05-13 21:54:29.56	2025-05-13 21:54:29.561	\N	\N	\N
111	lguql9x9obd8ogz7sbnwefkq	plugin::content-manager.explorer.delete	{}	api::kids-games-page.kids-games-page	{}	["admin::is-creator"]	2025-05-13 21:54:29.57	2025-05-13 21:54:29.57	2025-05-13 21:54:29.57	\N	\N	\N
112	h690qqx41s4i9z8hq7o3suvn	plugin::content-manager.explorer.delete	{}	api::open-parties-page.open-parties-page	{}	["admin::is-creator"]	2025-05-13 21:54:29.582	2025-05-13 21:54:29.582	2025-05-13 21:54:29.582	\N	\N	\N
113	ylv93qe8toy9rsgo49wnn05e	plugin::content-manager.explorer.delete	{}	api::personal-parties-page.personal-parties-page	{}	["admin::is-creator"]	2025-05-13 21:54:29.593	2025-05-13 21:54:29.593	2025-05-13 21:54:29.593	\N	\N	\N
114	gnvkvflb8cikmtxxnxlk2iem	plugin::content-manager.explorer.delete	{}	api::theme-party-event.theme-party-event	{}	["admin::is-creator"]	2025-05-13 21:54:29.606	2025-05-13 21:54:29.606	2025-05-13 21:54:29.606	\N	\N	\N
115	bzozxnp6olo49amvioce5kby	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2025-05-13 21:54:29.618	2025-05-13 21:54:29.618	2025-05-13 21:54:29.618	\N	\N	\N
116	kolfjpeffakhqj9pb8ld6cld	plugin::upload.configure-view	{}	\N	{}	[]	2025-05-13 21:54:29.627	2025-05-13 21:54:29.627	2025-05-13 21:54:29.628	\N	\N	\N
117	x6c43l923gx49dwea669i8yk	plugin::upload.assets.create	{}	\N	{}	[]	2025-05-13 21:54:29.637	2025-05-13 21:54:29.637	2025-05-13 21:54:29.637	\N	\N	\N
118	wsvsek6yuxavfsahjrk41gz2	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-05-13 21:54:29.647	2025-05-13 21:54:29.647	2025-05-13 21:54:29.647	\N	\N	\N
119	avdfgv9y8xz75lf0dkjpbfa2	plugin::upload.assets.download	{}	\N	{}	[]	2025-05-13 21:54:29.657	2025-05-13 21:54:29.657	2025-05-13 21:54:29.657	\N	\N	\N
120	yxijngjk5y5hsj8toj1gtjop	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-05-13 21:54:29.667	2025-05-13 21:54:29.667	2025-05-13 21:54:29.667	\N	\N	\N
121	eksequpovvf79y0a1ftfrpyj	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-05-13 21:54:29.755	2025-05-13 21:54:29.755	2025-05-13 21:54:29.755	\N	\N	\N
124	a9wvn8nhnzdot9a2wc5sr0td	plugin::content-manager.explorer.create	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	[]	2025-05-13 21:54:29.787	2025-05-13 21:54:29.787	2025-05-13 21:54:29.787	\N	\N	\N
128	rjcnt75y7ymro7lkt9xlu32a	plugin::content-manager.explorer.create	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	[]	2025-05-13 21:54:29.826	2025-05-13 21:54:29.826	2025-05-13 21:54:29.826	\N	\N	\N
130	ytusuwz2lboresxdzgy560m9	plugin::content-manager.explorer.create	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	[]	2025-05-13 21:54:29.846	2025-05-13 21:54:29.846	2025-05-13 21:54:29.846	\N	\N	\N
131	gg569kdykygvxx501qlixt7c	plugin::content-manager.explorer.create	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:29.855	2025-05-13 21:54:29.855	2025-05-13 21:54:29.856	\N	\N	\N
133	f8op6h0awre52xe60p5kuynz	plugin::content-manager.explorer.create	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	[]	2025-05-13 21:54:29.877	2025-05-13 21:54:29.877	2025-05-13 21:54:29.877	\N	\N	\N
134	do7eh4y2a74nmbvlbc38i1xu	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-05-13 21:54:29.888	2025-05-13 21:54:29.888	2025-05-13 21:54:29.888	\N	\N	\N
137	ovcpd9pydbiifz9tedtknvto	plugin::content-manager.explorer.read	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	[]	2025-05-13 21:54:29.918	2025-05-13 21:54:29.918	2025-05-13 21:54:29.918	\N	\N	\N
141	izs1qsl0llr8g75pkmu03ppt	plugin::content-manager.explorer.read	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	[]	2025-05-13 21:54:29.956	2025-05-13 21:54:29.956	2025-05-13 21:54:29.956	\N	\N	\N
143	ugs3444ix0w1a0og5ckvxvq8	plugin::content-manager.explorer.read	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	[]	2025-05-13 21:54:29.976	2025-05-13 21:54:29.976	2025-05-13 21:54:29.977	\N	\N	\N
144	qnt8xlqs2o2hqljsjj684rb3	plugin::content-manager.explorer.read	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:29.989	2025-05-13 21:54:29.989	2025-05-13 21:54:29.989	\N	\N	\N
146	s29onpc3x7c9b7l7tbvqsee4	plugin::content-manager.explorer.read	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	[]	2025-05-13 21:54:30.012	2025-05-13 21:54:30.012	2025-05-13 21:54:30.012	\N	\N	\N
147	hqbzvum1xl09iwswtl5xnbnx	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-05-13 21:54:30.025	2025-05-13 21:54:30.025	2025-05-13 21:54:30.025	\N	\N	\N
150	ino5bxaieckieb264jpqjeld	plugin::content-manager.explorer.update	{}	api::contact.contact	{"fields": ["name", "email", "phone", "message", "formType", "additionalData", "processed"]}	[]	2025-05-13 21:54:30.055	2025-05-13 21:54:30.055	2025-05-13 21:54:30.055	\N	\N	\N
154	z8tjg2wcig0qi35wjoz8pg1k	plugin::content-manager.explorer.update	{}	api::game.game	{"fields": ["title", "gameType", "audienceType", "ageGroups", "description", "hasPremiumVersion", "premiumDescription"]}	[]	2025-05-13 21:54:30.104	2025-05-13 21:54:30.104	2025-05-13 21:54:30.105	\N	\N	\N
156	eus3gvdr3ql5dixm70o7gpt9	plugin::content-manager.explorer.update	{}	api::kids-games-page.kids-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonials.text", "testimonials.author"]}	[]	2025-05-13 21:54:30.135	2025-05-13 21:54:30.135	2025-05-13 21:54:30.135	\N	\N	\N
157	iu7w9wzvt1rh2ohi1dc8aw39	plugin::content-manager.explorer.update	{}	api::open-parties-page.open-parties-page	{"fields": ["title", "description", "coverImage", "gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer"]}	[]	2025-05-13 21:54:30.15	2025-05-13 21:54:30.15	2025-05-13 21:54:30.15	\N	\N	\N
159	b6qacofgxv8iunsz9sw7kp1v	plugin::content-manager.explorer.update	{}	api::theme-party-event.theme-party-event	{"fields": ["title", "slug", "description", "coverImage", "media"]}	[]	2025-05-13 21:54:30.17	2025-05-13 21:54:30.17	2025-05-13 21:54:30.17	\N	\N	\N
160	wfax8whgxhp31ubtqjjk1j1n	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-05-13 21:54:30.179	2025-05-13 21:54:30.179	2025-05-13 21:54:30.179	\N	\N	\N
161	pjwygiqoocx239k23nw97bxe	plugin::content-manager.explorer.delete	{}	api::adult-games-page.adult-games-page	{}	[]	2025-05-13 21:54:30.189	2025-05-13 21:54:30.189	2025-05-13 21:54:30.189	\N	\N	\N
162	jf32aydq6v7qxuo8fe8i008o	plugin::content-manager.explorer.delete	{}	api::coffee-page.coffee-page	{}	[]	2025-05-13 21:54:30.198	2025-05-13 21:54:30.198	2025-05-13 21:54:30.198	\N	\N	\N
163	azlrioljty37c996778kthjs	plugin::content-manager.explorer.delete	{}	api::contact.contact	{}	[]	2025-05-13 21:54:30.208	2025-05-13 21:54:30.208	2025-05-13 21:54:30.208	\N	\N	\N
164	uumikv5mzj4u70dj7owncoye	plugin::content-manager.explorer.delete	{}	api::dance-page.dance-page	{}	[]	2025-05-13 21:54:30.217	2025-05-13 21:54:30.217	2025-05-13 21:54:30.217	\N	\N	\N
165	x7dmq8uotaqx17eud2rmwpdj	plugin::content-manager.explorer.delete	{}	api::event.event	{}	[]	2025-05-13 21:54:30.228	2025-05-13 21:54:30.228	2025-05-13 21:54:30.228	\N	\N	\N
166	pkljx9b4xn8mvrcjafj8lip2	plugin::content-manager.explorer.delete	{}	api::footer.footer	{}	[]	2025-05-13 21:54:30.238	2025-05-13 21:54:30.238	2025-05-13 21:54:30.238	\N	\N	\N
167	rocwuzy7ihas5g7zw9n7alog	plugin::content-manager.explorer.delete	{}	api::game.game	{}	[]	2025-05-13 21:54:30.247	2025-05-13 21:54:30.247	2025-05-13 21:54:30.247	\N	\N	\N
168	mhwzjzloif7ovq0hwmz6vfs0	plugin::content-manager.explorer.delete	{}	api::home-page.home-page	{}	[]	2025-05-13 21:54:30.262	2025-05-13 21:54:30.262	2025-05-13 21:54:30.262	\N	\N	\N
169	zq8b7qhdao40bea5hfepczum	plugin::content-manager.explorer.delete	{}	api::kids-games-page.kids-games-page	{}	[]	2025-05-13 21:54:30.275	2025-05-13 21:54:30.275	2025-05-13 21:54:30.275	\N	\N	\N
170	ot07xq6qjp92lkdffvskbvw2	plugin::content-manager.explorer.delete	{}	api::open-parties-page.open-parties-page	{}	[]	2025-05-13 21:54:30.288	2025-05-13 21:54:30.288	2025-05-13 21:54:30.288	\N	\N	\N
171	zx2rkadzurvd4toyzfxx6alb	plugin::content-manager.explorer.delete	{}	api::personal-parties-page.personal-parties-page	{}	[]	2025-05-13 21:54:30.298	2025-05-13 21:54:30.298	2025-05-13 21:54:30.298	\N	\N	\N
172	qfmzvv37e71fvmbvmb4op9d2	plugin::content-manager.explorer.delete	{}	api::theme-party-event.theme-party-event	{}	[]	2025-05-13 21:54:30.308	2025-05-13 21:54:30.308	2025-05-13 21:54:30.308	\N	\N	\N
173	t1l36xfxoaslvsvgzo55ngbq	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-05-13 21:54:30.32	2025-05-13 21:54:30.32	2025-05-13 21:54:30.32	\N	\N	\N
174	fpbdsutmatzqbmv4zra3x0ci	plugin::content-manager.explorer.publish	{}	api::adult-games-page.adult-games-page	{}	[]	2025-05-13 21:54:30.329	2025-05-13 21:54:30.329	2025-05-13 21:54:30.329	\N	\N	\N
175	ugb0c8sui38dl655ji06d66r	plugin::content-manager.explorer.publish	{}	api::coffee-page.coffee-page	{}	[]	2025-05-13 21:54:30.339	2025-05-13 21:54:30.339	2025-05-13 21:54:30.339	\N	\N	\N
176	m0uhi4j050bg43jpeh25upp4	plugin::content-manager.explorer.publish	{}	api::contact.contact	{}	[]	2025-05-13 21:54:30.349	2025-05-13 21:54:30.349	2025-05-13 21:54:30.349	\N	\N	\N
177	z2qq2plr7n5nikjjd7kkbnb8	plugin::content-manager.explorer.publish	{}	api::dance-page.dance-page	{}	[]	2025-05-13 21:54:30.361	2025-05-13 21:54:30.361	2025-05-13 21:54:30.361	\N	\N	\N
178	l9pka7uyobjm86tu11228hxk	plugin::content-manager.explorer.publish	{}	api::event.event	{}	[]	2025-05-13 21:54:30.371	2025-05-13 21:54:30.371	2025-05-13 21:54:30.371	\N	\N	\N
181	xzr7qoth6i1d8zzsah3xk2dv	plugin::content-manager.explorer.publish	{}	api::home-page.home-page	{}	[]	2025-05-13 21:54:30.402	2025-05-13 21:54:30.402	2025-05-13 21:54:30.402	\N	\N	\N
182	ugcfcn48rg0pp0ep414tnm9n	plugin::content-manager.explorer.publish	{}	api::kids-games-page.kids-games-page	{}	[]	2025-05-13 21:54:30.412	2025-05-13 21:54:30.412	2025-05-13 21:54:30.412	\N	\N	\N
183	ldb0144k2cr47wv8i4f26pu9	plugin::content-manager.explorer.publish	{}	api::open-parties-page.open-parties-page	{}	[]	2025-05-13 21:54:30.421	2025-05-13 21:54:30.421	2025-05-13 21:54:30.421	\N	\N	\N
184	sqmfmmbxc1ylafkrmd5u6v0f	plugin::content-manager.explorer.publish	{}	api::personal-parties-page.personal-parties-page	{}	[]	2025-05-13 21:54:30.431	2025-05-13 21:54:30.431	2025-05-13 21:54:30.431	\N	\N	\N
185	lqo6gj0zgsn7x0ua10fev8b3	plugin::content-manager.explorer.publish	{}	api::theme-party-event.theme-party-event	{}	[]	2025-05-13 21:54:30.442	2025-05-13 21:54:30.442	2025-05-13 21:54:30.442	\N	\N	\N
186	ri7suqqr2670hwnmh350xaaf	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-05-13 21:54:30.452	2025-05-13 21:54:30.452	2025-05-13 21:54:30.452	\N	\N	\N
187	yu8hepm6z6wl3j29x1u68sjg	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-05-13 21:54:30.461	2025-05-13 21:54:30.461	2025-05-13 21:54:30.461	\N	\N	\N
188	jkdsfbuh8pt5de0zmh2w2fxk	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-05-13 21:54:30.471	2025-05-13 21:54:30.471	2025-05-13 21:54:30.471	\N	\N	\N
189	upemnpmbyl71kfaabk152r21	plugin::content-type-builder.read	{}	\N	{}	[]	2025-05-13 21:54:30.481	2025-05-13 21:54:30.481	2025-05-13 21:54:30.481	\N	\N	\N
190	rv8sl450upeoez0xfyjvpou2	plugin::email.settings.read	{}	\N	{}	[]	2025-05-13 21:54:30.491	2025-05-13 21:54:30.491	2025-05-13 21:54:30.491	\N	\N	\N
191	iunbg07i0xj9pk0p0p8zvkd4	plugin::upload.read	{}	\N	{}	[]	2025-05-13 21:54:30.501	2025-05-13 21:54:30.501	2025-05-13 21:54:30.501	\N	\N	\N
192	vjfww59firt44h9blgj0ujgd	plugin::upload.assets.create	{}	\N	{}	[]	2025-05-13 21:54:30.511	2025-05-13 21:54:30.511	2025-05-13 21:54:30.511	\N	\N	\N
193	ad4az7a7vm1lq500z8ivmx70	plugin::upload.assets.update	{}	\N	{}	[]	2025-05-13 21:54:30.521	2025-05-13 21:54:30.521	2025-05-13 21:54:30.521	\N	\N	\N
194	d5wdah1xdl7ahzg5pcpacemk	plugin::upload.assets.download	{}	\N	{}	[]	2025-05-13 21:54:30.53	2025-05-13 21:54:30.53	2025-05-13 21:54:30.53	\N	\N	\N
195	q5ri5rgdnk4axnjowma26rmq	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-05-13 21:54:30.54	2025-05-13 21:54:30.54	2025-05-13 21:54:30.54	\N	\N	\N
196	m7sfd0l8kee1l8xjz0mj2gfe	plugin::upload.configure-view	{}	\N	{}	[]	2025-05-13 21:54:30.549	2025-05-13 21:54:30.549	2025-05-13 21:54:30.549	\N	\N	\N
197	ntyimjo4mwg0u9qcromoftls	plugin::upload.settings.read	{}	\N	{}	[]	2025-05-13 21:54:30.559	2025-05-13 21:54:30.559	2025-05-13 21:54:30.559	\N	\N	\N
198	aa13db724qjquchfbgvwct9z	plugin::i18n.locale.create	{}	\N	{}	[]	2025-05-13 21:54:30.568	2025-05-13 21:54:30.568	2025-05-13 21:54:30.568	\N	\N	\N
199	rjcbchbgd6bfmrqi8g6x7dh9	plugin::i18n.locale.read	{}	\N	{}	[]	2025-05-13 21:54:30.581	2025-05-13 21:54:30.581	2025-05-13 21:54:30.581	\N	\N	\N
200	k0akw522334p00y41qfldr8q	plugin::i18n.locale.update	{}	\N	{}	[]	2025-05-13 21:54:30.59	2025-05-13 21:54:30.59	2025-05-13 21:54:30.591	\N	\N	\N
201	yupg7to27t2mebod87pjk55k	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-05-13 21:54:30.6	2025-05-13 21:54:30.6	2025-05-13 21:54:30.6	\N	\N	\N
202	tg7tvaoqoq6eblfc9rz9kqwf	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-05-13 21:54:30.61	2025-05-13 21:54:30.61	2025-05-13 21:54:30.61	\N	\N	\N
203	yct5pxb5qhhyz62r8v03vnvw	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-05-13 21:54:30.621	2025-05-13 21:54:30.621	2025-05-13 21:54:30.622	\N	\N	\N
204	em5vy818bedzsvo96c6mzlta	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-05-13 21:54:30.633	2025-05-13 21:54:30.633	2025-05-13 21:54:30.633	\N	\N	\N
205	ryiw2kd4sfzlaf2uirrqhsu5	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-05-13 21:54:30.642	2025-05-13 21:54:30.642	2025-05-13 21:54:30.642	\N	\N	\N
206	imrrxy62ybymd8oq5zrttexz	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-05-13 21:54:30.652	2025-05-13 21:54:30.652	2025-05-13 21:54:30.652	\N	\N	\N
207	tpmsqs77t83bopj8sy0tuqfi	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-05-13 21:54:30.661	2025-05-13 21:54:30.661	2025-05-13 21:54:30.661	\N	\N	\N
208	tyt47iit9azn0zfcb6lb00fa	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-05-13 21:54:30.671	2025-05-13 21:54:30.671	2025-05-13 21:54:30.671	\N	\N	\N
209	cauvm4e2cazzxzayow1rwd2o	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-05-13 21:54:30.68	2025-05-13 21:54:30.68	2025-05-13 21:54:30.68	\N	\N	\N
210	sfo3o2e4f089sgqqqd1tcgkd	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-05-13 21:54:30.69	2025-05-13 21:54:30.69	2025-05-13 21:54:30.69	\N	\N	\N
211	h8tcwa25djxkxitsnqn1l29q	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-05-13 21:54:30.699	2025-05-13 21:54:30.699	2025-05-13 21:54:30.699	\N	\N	\N
212	u9oupjxe66nu6imngninc3kk	admin::marketplace.read	{}	\N	{}	[]	2025-05-13 21:54:30.709	2025-05-13 21:54:30.709	2025-05-13 21:54:30.709	\N	\N	\N
213	e8ac3wgray95vbasgd3rp2s1	admin::webhooks.create	{}	\N	{}	[]	2025-05-13 21:54:30.721	2025-05-13 21:54:30.721	2025-05-13 21:54:30.721	\N	\N	\N
214	pa3qdgjcpogphjsrovn0e01o	admin::webhooks.read	{}	\N	{}	[]	2025-05-13 21:54:30.73	2025-05-13 21:54:30.73	2025-05-13 21:54:30.73	\N	\N	\N
215	p7impa1lernmz6pvu0ia40za	admin::webhooks.update	{}	\N	{}	[]	2025-05-13 21:54:30.74	2025-05-13 21:54:30.74	2025-05-13 21:54:30.74	\N	\N	\N
216	yt761891c6q0gl5mmb7wokrh	admin::webhooks.delete	{}	\N	{}	[]	2025-05-13 21:54:30.75	2025-05-13 21:54:30.75	2025-05-13 21:54:30.75	\N	\N	\N
217	m39f9agkhu1yuzhcj1c3v3c5	admin::users.create	{}	\N	{}	[]	2025-05-13 21:54:30.759	2025-05-13 21:54:30.759	2025-05-13 21:54:30.759	\N	\N	\N
218	ycw9pl2b6royj7570mrp562a	admin::users.read	{}	\N	{}	[]	2025-05-13 21:54:30.771	2025-05-13 21:54:30.771	2025-05-13 21:54:30.771	\N	\N	\N
219	g28bq0d1p9d15gbwewncpb4f	admin::users.update	{}	\N	{}	[]	2025-05-13 21:54:30.783	2025-05-13 21:54:30.783	2025-05-13 21:54:30.784	\N	\N	\N
220	v7rheiyvjjig6cndoa9wh9uh	admin::users.delete	{}	\N	{}	[]	2025-05-13 21:54:30.793	2025-05-13 21:54:30.793	2025-05-13 21:54:30.793	\N	\N	\N
221	nlooycecou862czhq92a9dz4	admin::roles.create	{}	\N	{}	[]	2025-05-13 21:54:30.802	2025-05-13 21:54:30.802	2025-05-13 21:54:30.803	\N	\N	\N
222	k7haqj23rhh8rxgdauak5iic	admin::roles.read	{}	\N	{}	[]	2025-05-13 21:54:30.812	2025-05-13 21:54:30.812	2025-05-13 21:54:30.812	\N	\N	\N
223	dhop430xr02ryd1mq2y854eb	admin::roles.update	{}	\N	{}	[]	2025-05-13 21:54:30.822	2025-05-13 21:54:30.822	2025-05-13 21:54:30.822	\N	\N	\N
224	bjaa522zjs82c56vwsd3fak8	admin::roles.delete	{}	\N	{}	[]	2025-05-13 21:54:30.831	2025-05-13 21:54:30.831	2025-05-13 21:54:30.831	\N	\N	\N
225	hhc8537mvo0538uy1k661048	admin::api-tokens.access	{}	\N	{}	[]	2025-05-13 21:54:30.843	2025-05-13 21:54:30.843	2025-05-13 21:54:30.843	\N	\N	\N
226	qelrw99hvcz2n6yztaliuzvh	admin::api-tokens.create	{}	\N	{}	[]	2025-05-13 21:54:30.854	2025-05-13 21:54:30.854	2025-05-13 21:54:30.855	\N	\N	\N
227	yq98jm36driwyo9rc8bi9zot	admin::api-tokens.read	{}	\N	{}	[]	2025-05-13 21:54:30.865	2025-05-13 21:54:30.865	2025-05-13 21:54:30.865	\N	\N	\N
228	z7fog1if4wq16ejthztbnh4z	admin::api-tokens.update	{}	\N	{}	[]	2025-05-13 21:54:30.875	2025-05-13 21:54:30.875	2025-05-13 21:54:30.875	\N	\N	\N
229	mvsykanpy1lmlayto53xkena	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-05-13 21:54:30.886	2025-05-13 21:54:30.886	2025-05-13 21:54:30.886	\N	\N	\N
230	qh2eowzz8sueo90e3f0n3ejf	admin::api-tokens.delete	{}	\N	{}	[]	2025-05-13 21:54:30.895	2025-05-13 21:54:30.895	2025-05-13 21:54:30.896	\N	\N	\N
231	o75z6k4646y0n8hdj9hy4bq7	admin::project-settings.update	{}	\N	{}	[]	2025-05-13 21:54:30.907	2025-05-13 21:54:30.907	2025-05-13 21:54:30.907	\N	\N	\N
232	vusgsuzgdnudtv7w7vs4st72	admin::project-settings.read	{}	\N	{}	[]	2025-05-13 21:54:30.917	2025-05-13 21:54:30.917	2025-05-13 21:54:30.917	\N	\N	\N
233	ywonlwl0qviw8b7g1t8v15hu	admin::transfer.tokens.access	{}	\N	{}	[]	2025-05-13 21:54:30.926	2025-05-13 21:54:30.926	2025-05-13 21:54:30.926	\N	\N	\N
234	bm8n6z47wghoru8uy1zeo8o5	admin::transfer.tokens.create	{}	\N	{}	[]	2025-05-13 21:54:30.94	2025-05-13 21:54:30.94	2025-05-13 21:54:30.94	\N	\N	\N
235	it9xxmjw40yhu78ha03zzhbw	admin::transfer.tokens.read	{}	\N	{}	[]	2025-05-13 21:54:30.952	2025-05-13 21:54:30.952	2025-05-13 21:54:30.952	\N	\N	\N
236	u8c8njuasjj6e7vm2p3x9l3k	admin::transfer.tokens.update	{}	\N	{}	[]	2025-05-13 21:54:30.962	2025-05-13 21:54:30.962	2025-05-13 21:54:30.962	\N	\N	\N
237	oozvhc2b9ynubjh8wvpg1a4l	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-05-13 21:54:30.972	2025-05-13 21:54:30.972	2025-05-13 21:54:30.972	\N	\N	\N
238	nlf3pd683wryx5en49vymll2	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-05-13 21:54:30.981	2025-05-13 21:54:30.981	2025-05-13 21:54:30.982	\N	\N	\N
239	sv5ah141dfjquyeyw6lyt02t	plugin::content-manager.explorer.create	{}	api::footer.footer	{"fields": ["number", "email", "adress", "vkLink", "telegramLink", "rutubeLink"]}	[]	2025-05-15 13:18:29.535	2025-05-15 13:18:29.535	2025-05-15 13:18:29.541	\N	\N	\N
240	oamojrt8934sdmk7pf6nii7z	plugin::content-manager.explorer.read	{}	api::footer.footer	{"fields": ["number", "email", "adress", "vkLink", "telegramLink", "rutubeLink"]}	[]	2025-05-15 13:18:29.56	2025-05-15 13:18:29.56	2025-05-15 13:18:29.56	\N	\N	\N
241	sl3y0dw8iuoz4r06yndw0h6l	plugin::content-manager.explorer.update	{}	api::footer.footer	{"fields": ["number", "email", "adress", "vkLink", "telegramLink", "rutubeLink"]}	[]	2025-05-15 13:18:29.567	2025-05-15 13:18:29.567	2025-05-15 13:18:29.568	\N	\N	\N
266	w8u40d4ast0v4tnhrlguuarw	plugin::content-manager.explorer.create	{}	api::dance-page.dance-page	{"fields": ["Title", "Description", "questions.question", "questions.answer", "danceTypes.title", "danceTypes.description", "danceTypes.CoverImage", "aboutUs.title", "aboutUs.description", "prices.title", "prices.shortDescription", "prices.price", "prices.points.point", "trainer.mainImage", "trainer.name", "trainer.description"]}	[]	2025-05-15 19:55:21.502	2025-05-15 19:55:21.502	2025-05-15 19:55:21.505	\N	\N	\N
267	rsynlq7yes921laei5zoge7z	plugin::content-manager.explorer.read	{}	api::dance-page.dance-page	{"fields": ["Title", "Description", "questions.question", "questions.answer", "danceTypes.title", "danceTypes.description", "danceTypes.CoverImage", "aboutUs.title", "aboutUs.description", "prices.title", "prices.shortDescription", "prices.price", "prices.points.point", "trainer.mainImage", "trainer.name", "trainer.description"]}	[]	2025-05-15 19:55:21.521	2025-05-15 19:55:21.521	2025-05-15 19:55:21.524	\N	\N	\N
268	savxndq3uonkfwpc392ij8r5	plugin::content-manager.explorer.update	{}	api::dance-page.dance-page	{"fields": ["Title", "Description", "questions.question", "questions.answer", "danceTypes.title", "danceTypes.description", "danceTypes.CoverImage", "aboutUs.title", "aboutUs.description", "prices.title", "prices.shortDescription", "prices.price", "prices.points.point", "trainer.mainImage", "trainer.name", "trainer.description"]}	[]	2025-05-15 19:55:21.531	2025-05-15 19:55:21.531	2025-05-15 19:55:21.531	\N	\N	\N
275	c5ivvk3wlwi80ffcl07a92xi	plugin::content-manager.explorer.create	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "rentGallery", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription", "questions.question", "questions.answer", "testimonial.text", "testimonial.author", "fishki.Title", "fishki.Description", "gameGallery", "themeGallery"]}	[]	2025-05-15 22:42:07.842	2025-05-15 22:42:07.842	2025-05-15 22:42:07.845	\N	\N	\N
276	k1ybna5iqdv4khcwkwk9iqwm	plugin::content-manager.explorer.read	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "rentGallery", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription", "questions.question", "questions.answer", "testimonial.text", "testimonial.author", "fishki.Title", "fishki.Description", "gameGallery", "themeGallery"]}	[]	2025-05-15 22:42:07.863	2025-05-15 22:42:07.863	2025-05-15 22:42:07.863	\N	\N	\N
277	odxdkpm2oukbihex0ntiawvh	plugin::content-manager.explorer.update	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "rentGallery", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription", "questions.question", "questions.answer", "testimonial.text", "testimonial.author", "fishki.Title", "fishki.Description", "gameGallery", "themeGallery"]}	[]	2025-05-15 22:42:07.87	2025-05-15 22:42:07.87	2025-05-15 22:42:07.871	\N	\N	\N
101	zrwe3rgoz19nu9j9g7fmli6k	plugin::content-manager.explorer.update	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription"]}	["admin::is-creator"]	2025-05-13 21:54:29.467	2025-05-15 22:42:07.998	2025-05-13 21:54:29.467	\N	\N	\N
89	i114wmjr14lweltpxhpis10x	plugin::content-manager.explorer.read	{}	api::personal-parties-page.personal-parties-page	{"fields": ["Title", "pageHeader.title", "pageHeader.description", "Description", "programs.title", "programs.description", "programs.mainImage", "programs.galleryImages", "programs.slug", "programs.shortDescription"]}	["admin::is-creator"]	2025-05-13 21:54:29.34	2025-05-15 22:42:07.998	2025-05-13 21:54:29.34	\N	\N	\N
8	nwix85ou6vz93rhr03asbnp5	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Founder_Quote", "Founder_Name", "Founder_Images"]}	[]	2025-05-13 21:54:28.396	2025-05-28 17:59:20.991	2025-05-13 21:54:28.396	\N	\N	\N
74	or8mm5f0lbo2f9tqh6ec3dns	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Founder_Quote", "Founder_Name", "Founder_Images"]}	["admin::is-creator"]	2025-05-13 21:54:29.164	2025-05-28 17:59:20.991	2025-05-13 21:54:29.164	\N	\N	\N
98	svf8it7b7mcziabgjomxp7rr	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Founder_Quote", "Founder_Name", "Founder_Images"]}	["admin::is-creator"]	2025-05-13 21:54:29.435	2025-05-28 17:59:20.991	2025-05-13 21:54:29.435	\N	\N	\N
32	y81dhiwtkbznabjbub87zy6e	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Founder_Quote", "Founder_Name", "Founder_Images"]}	[]	2025-05-13 21:54:28.657	2025-05-28 17:59:20.991	2025-05-13 21:54:28.657	\N	\N	\N
86	ugr6p8kkyek8kbxc8kil8f6n	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Founder_Quote", "Founder_Name", "Founder_Images"]}	["admin::is-creator"]	2025-05-13 21:54:29.308	2025-05-28 17:59:20.991	2025-05-13 21:54:29.308	\N	\N	\N
278	nt1te5uby3zro4j208jl45uq	plugin::content-manager.explorer.create	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug", "eventLink"]}	[]	2025-05-19 11:42:25.101	2025-05-19 11:42:25.101	2025-05-19 11:42:25.102	\N	\N	\N
279	io43ynppxsljnxp4ehxwlpe4	plugin::content-manager.explorer.read	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug", "eventLink"]}	[]	2025-05-19 11:42:25.132	2025-05-19 11:42:25.132	2025-05-19 11:42:25.133	\N	\N	\N
280	lugme4gvkqypyiqg8sbw9upi	plugin::content-manager.explorer.update	{}	api::event.event	{"fields": ["title", "date", "type", "shortDescription", "fullDescription", "price", "maxParticipants", "currentParticipants", "location", "duration", "coverImage", "gallery", "slug", "eventLink"]}	[]	2025-05-19 11:42:25.144	2025-05-19 11:42:25.144	2025-05-19 11:42:25.144	\N	\N	\N
325	av3t9ml6eb2b26w766qnv96t	plugin::content-manager.explorer.delete	{}	api::promo-banner.promo-banner	{}	[]	2025-05-28 18:27:05.484	2025-05-28 18:27:05.484	2025-05-28 18:27:05.484	\N	\N	\N
326	x9akcfr7z6j831k2xxswvbxz	plugin::content-manager.explorer.publish	{}	api::promo-banner.promo-banner	{}	[]	2025-05-28 18:27:05.485	2025-05-28 18:27:05.485	2025-05-28 18:27:05.485	\N	\N	\N
327	rxgjox72nqlwlo308jy25l5r	plugin::content-manager.explorer.create	{}	api::promo-banner.promo-banner	{"fields": ["title", "buttonText", "buttonLink", "isExternalLink", "isActive", "CoverImage"]}	[]	2025-05-28 18:27:11.566	2025-05-28 18:27:11.566	2025-05-28 18:27:11.566	\N	\N	\N
328	xreeke9hnu3zlt3ne8e8mudc	plugin::content-manager.explorer.read	{}	api::promo-banner.promo-banner	{"fields": ["title", "buttonText", "buttonLink", "isExternalLink", "isActive", "CoverImage"]}	[]	2025-05-28 18:27:11.569	2025-05-28 18:27:11.569	2025-05-28 18:27:11.569	\N	\N	\N
329	urjblmz388mrs0sf41ap82ag	plugin::content-manager.explorer.update	{}	api::promo-banner.promo-banner	{"fields": ["title", "buttonText", "buttonLink", "isExternalLink", "isActive", "CoverImage"]}	[]	2025-05-28 18:27:11.571	2025-05-28 18:27:11.571	2025-05-28 18:27:11.571	\N	\N	\N
330	gv64xxk4gy60s957w2hrscj5	plugin::content-manager.explorer.create	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	[]	2025-06-01 07:08:44.608	2025-06-01 07:08:44.608	2025-06-01 07:08:44.609	\N	\N	\N
331	bpopew4v5f8rmpoesimrw7pe	plugin::content-manager.explorer.read	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	[]	2025-06-01 07:08:44.615	2025-06-01 07:08:44.615	2025-06-01 07:08:44.615	\N	\N	\N
332	qh8ivt4tyn33rtsbfcksu3te	plugin::content-manager.explorer.update	{}	api::coffee-page.coffee-page	{"fields": ["heroTitle", "heroSubtitle", "sectionTitle", "description", "galleryTitle", "galleryImages", "classicMenuFile", "seasonalMenuFile"]}	[]	2025-06-01 07:08:44.617	2025-06-01 07:08:44.617	2025-06-01 07:08:44.617	\N	\N	\N
333	rjoe6zjaouun6atksky2dgeb	plugin::content-manager.explorer.create	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonial.text", "testimonial.author"]}	[]	2025-06-05 12:41:37.878	2025-06-05 12:41:37.878	2025-06-05 12:41:37.878	\N	\N	\N
334	bnnkrzj3z4jq5h3p7yoislml	plugin::content-manager.explorer.read	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonial.text", "testimonial.author"]}	[]	2025-06-05 12:41:37.882	2025-06-05 12:41:37.882	2025-06-05 12:41:37.882	\N	\N	\N
290	zf0ha916ltq46melkl8kgl2q	plugin::content-manager.explorer.create	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Gallery_Images1", "Founder_Quote", "Founder_Name", "Founder_Images", "Gallery_Images2"]}	[]	2025-05-28 17:59:20.953	2025-05-28 17:59:20.953	2025-05-28 17:59:20.953	\N	\N	\N
292	kb0emdek9np5b8qn77j4xrs1	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Gallery_Images1", "Founder_Quote", "Founder_Name", "Founder_Images", "Gallery_Images2"]}	[]	2025-05-28 17:59:20.957	2025-05-28 17:59:20.957	2025-05-28 17:59:20.957	\N	\N	\N
294	vllbalg3fmpymtamuwmdeip6	plugin::content-manager.explorer.update	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Gallery_Images1", "Founder_Quote", "Founder_Name", "Founder_Images", "Gallery_Images2"]}	[]	2025-05-28 17:59:20.961	2025-05-28 17:59:20.961	2025-05-28 17:59:20.961	\N	\N	\N
20	nipzsd3zgfi2724bpmq5q1s2	plugin::content-manager.explorer.read	{}	api::home-page.home-page	{"fields": ["Title", "Description", "About_Title", "About_Description", "About_Full_Description", "Founder_Quote", "Founder_Name", "Founder_Images"]}	[]	2025-05-13 21:54:28.528	2025-05-28 17:59:20.984	2025-05-13 21:54:28.528	\N	\N	\N
335	oxif404do348mhv0epxe13li	plugin::content-manager.explorer.update	{}	api::adult-games-page.adult-games-page	{"fields": ["Title", "Description", "CoverImage", "Gallery", "pageHeader.title", "pageHeader.description", "faq.question", "faq.answer", "testimonial.text", "testimonial.author"]}	[]	2025-06-05 12:41:37.884	2025-06-05 12:41:37.884	2025-06-05 12:41:37.884	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	2	32
33	33	2	33
34	34	2	34
35	35	2	35
36	36	2	36
37	37	2	37
38	38	2	38
39	39	2	39
40	40	2	40
41	41	2	41
42	42	2	42
43	43	2	43
44	44	2	44
45	45	2	45
46	46	2	46
47	47	2	47
48	48	2	48
49	49	2	49
50	50	2	50
51	51	2	51
52	52	2	52
53	53	2	53
54	54	2	54
55	55	2	55
56	56	2	56
57	57	2	57
58	58	2	58
59	59	2	59
60	60	2	60
61	61	2	61
62	62	2	62
63	63	2	63
64	64	2	64
65	65	2	65
66	66	2	66
67	67	3	1
68	68	3	2
69	69	3	3
70	70	3	4
71	71	3	5
72	72	3	6
73	73	3	7
74	74	3	8
75	75	3	9
76	76	3	10
77	77	3	11
78	78	3	12
79	79	3	13
80	80	3	14
81	81	3	15
82	82	3	16
83	83	3	17
84	84	3	18
85	85	3	19
86	86	3	20
87	87	3	21
88	88	3	22
89	89	3	23
90	90	3	24
91	91	3	25
92	92	3	26
93	93	3	27
94	94	3	28
95	95	3	29
96	96	3	30
97	97	3	31
98	98	3	32
99	99	3	33
100	100	3	34
101	101	3	35
102	102	3	36
103	103	3	37
104	104	3	38
105	105	3	39
106	106	3	40
107	107	3	41
108	108	3	42
109	109	3	43
110	110	3	44
111	111	3	45
112	112	3	46
113	113	3	47
114	114	3	48
115	115	3	49
116	116	3	50
117	117	3	51
118	118	3	52
119	119	3	53
120	120	3	54
121	121	1	1
124	124	1	4
128	128	1	8
130	130	1	10
131	131	1	11
133	133	1	13
134	134	1	14
137	137	1	17
141	141	1	21
143	143	1	23
144	144	1	24
146	146	1	26
147	147	1	27
150	150	1	30
154	154	1	34
156	156	1	36
157	157	1	37
159	159	1	39
160	160	1	40
161	161	1	41
162	162	1	42
163	163	1	43
164	164	1	44
165	165	1	45
166	166	1	46
167	167	1	47
168	168	1	48
169	169	1	49
170	170	1	50
171	171	1	51
172	172	1	52
173	173	1	53
174	174	1	54
175	175	1	55
176	176	1	56
177	177	1	57
178	178	1	58
179	179	1	59
180	180	1	60
181	181	1	61
182	182	1	62
183	183	1	63
184	184	1	64
185	185	1	65
186	186	1	66
187	187	1	67
188	188	1	68
189	189	1	69
190	190	1	70
191	191	1	71
192	192	1	72
193	193	1	73
194	194	1	74
195	195	1	75
196	196	1	76
197	197	1	77
198	198	1	78
199	199	1	79
200	200	1	80
201	201	1	81
202	202	1	82
203	203	1	83
204	204	1	84
205	205	1	85
206	206	1	86
207	207	1	87
208	208	1	88
209	209	1	89
210	210	1	90
211	211	1	91
212	212	1	92
213	213	1	93
214	214	1	94
215	215	1	95
216	216	1	96
217	217	1	97
218	218	1	98
219	219	1	99
220	220	1	100
221	221	1	101
222	222	1	102
223	223	1	103
224	224	1	104
225	225	1	105
226	226	1	106
227	227	1	107
228	228	1	108
229	229	1	109
230	230	1	110
231	231	1	111
232	232	1	112
233	233	1	113
234	234	1	114
235	235	1	115
236	236	1	116
237	237	1	117
238	238	1	118
239	239	1	119
240	240	1	120
241	241	1	121
266	266	1	125
267	267	1	126
268	268	1	127
275	275	1	131
276	276	1	132
277	277	1	133
278	278	1	134
279	279	1	135
280	280	1	136
325	325	1	154
326	326	1	155
327	327	1	156
328	328	1	157
329	329	1	158
330	330	1	159
331	331	1	160
332	332	1	161
333	333	1	162
334	334	1	163
335	335	1	164
290	290	1	146
292	292	1	148
294	294	1	150
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	dehdk7yrj011shqbrtk8tes5	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-05-13 21:54:28.264	2025-05-13 21:54:28.264	2025-05-13 21:54:28.264	\N	\N	\N
2	sllfu6ugyjkmg592vi5j3j8i	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-05-13 21:54:28.279	2025-05-13 21:54:28.279	2025-05-13 21:54:28.279	\N	\N	\N
3	m0onihkx50l75m6qsbzoyrh6	Author	strapi-author	Authors can manage the content they have created.	2025-05-13 21:54:28.289	2025-05-13 21:54:28.289	2025-05-13 21:54:28.289	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	xx2r22fk78ismww5cjlqpqrz	Yaroslav	\N	\N	cherepnyayar@gmail.com	$2a$10$bhBUDrQ6MmPSDChXk2iGA.KdODt7MIRYWWVLcqU9IB0QzE3M9mgEq	\N	\N	t	f	\N	2025-05-13 21:55:43.574	2025-05-16 10:10:12.207	2025-05-13 21:55:43.577	\N	\N	\N
3	djj2b9iyb9yssgyewxf9bk9q	Olga	Ryabiko	azol87@yandex.ru	azol87@yandex.ru	$2a$10$pJGm3n6gPeICZJmSR.OfFeBm.dnEB3cZXS5zJMN7O2E/Huh4Klj7K	\N	100bec6fbc79979024c0173ad7c5c418a323ebc4	t	f	\N	2025-05-16 12:17:25.451	2025-05-16 12:20:32.68	2025-05-16 12:17:25.451	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
4	3	1	1	2
\.


--
-- Data for Name: adult_games_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.adult_games_pages (id, document_id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ihi5c89v3ugzn1y5vknb4kc3	Игры для взрослых	Коннект с головой - коннект с собой! Искусство управлять своей жизнью!	2025-05-14 15:04:03.281	2025-06-05 12:46:51.422	\N	1	1	\N
5	ihi5c89v3ugzn1y5vknb4kc3	Игры для взрослых	Коннект с головой - коннект с собой! Искусство управлять своей жизнью!	2025-05-14 15:04:03.281	2025-06-05 12:46:51.422	2025-06-05 12:46:51.461	1	1	\N
\.


--
-- Data for Name: adult_games_pages_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.adult_games_pages_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
2	1	1	shared.faq-item	faq	1
1	1	1	shared.page-header	pageHeader	2
15	1	25	shared.testimonial	testimonial	1
16	5	29	shared.page-header	pageHeader	\N
17	5	48	shared.faq-item	faq	1
18	5	26	shared.testimonial	testimonial	1
\.


--
-- Data for Name: coffee_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.coffee_pages (id, document_id, hero_title, hero_subtitle, section_title, description, gallery_title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	q2eeo5hxig0kk9safepdr2v8	Кофе в K.O.D.	Искусство вкуса и аромата	Наша кофейня	С раннего утра и до позднего вечера наша команда и гости поддерживают свое тело/разум заряженным и креативным! И все благодаря вкусным напиткам из классического и неклассического кофейного меню. Мы готовим кофейные напитки на высококлассном зерне от Питерской компании - обжарщика «Мануфактура кофе».\n\nЛюбовь к кофе проявилась в нашем пространстве еще в 2020 году, и с тех пор мы делимся ей со всеми гостями нашего арт-пространства!\n\nОбратите внимание, что любое мероприятие в K.O.D. может сопровождаться напитками из меню. Вы можете ознакомиться с ним заранее и сделать предварительный заказ через сайт.	Наш кофе	2025-05-15 20:05:58.007	2025-05-15 20:05:58.007	\N	1	1	\N
2	q2eeo5hxig0kk9safepdr2v8	Кофе в K.O.D.	Искусство вкуса и аромата	Наша кофейня	С раннего утра и до позднего вечера наша команда и гости поддерживают свое тело/разум заряженным и креативным! И все благодаря вкусным напиткам из классического и неклассического кофейного меню. Мы готовим кофейные напитки на высококлассном зерне от Питерской компании - обжарщика «Мануфактура кофе».\n\nЛюбовь к кофе проявилась в нашем пространстве еще в 2020 году, и с тех пор мы делимся ей со всеми гостями нашего арт-пространства!\n\nОбратите внимание, что любое мероприятие в K.O.D. может сопровождаться напитками из меню. Вы можете ознакомиться с ним заранее и сделать предварительный заказ через сайт.	Наш кофе	2025-05-15 20:05:58.007	2025-05-15 20:05:58.007	2025-05-15 20:05:58.036	1	1	\N
\.


--
-- Data for Name: components_programs_programs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_programs_programs (id, title, description, slug, short_description) FROM stdin;
4	Тимбилдинги	Компания начинается с идеи, но развивается, расширяется и\nмасштабируется только при условии вдохновленной, увлеченной,\nзамотивированной и сплоченной команды! Мы предлагаем\nорганизацию и проведение мероприятий в форме - бизнес-игр и\nтематических вечеринок с учетом ваших целей и задач! На\nтерритории пространства K.O.D., а также в выездном формате. Мы\n- профессиональные организаторы игр и событий для прокачки\nвашей команды!\nКакие плюсы\n- Игры укрепляет коммуникацию внутри команды\n- Игры формируют доверительную среду для сотрудничества\n- Игры учат правильному взаимодействию друг с другом\n- Игры определяют уровень ответственности каждого участника команды\n- Игры помогают выстроить новую стратегию в условиях изменчивого мира\n- Игры определяют правильные тактические действия каждого участника процесса\nКак проходят игры?\nВ основном, бизнес игры - это пространственные или настольные бизнес - карты, где\nконечная точка - цель компании в указанном временном разрезе. Ход каждого из\nигроков - непредсказуем и зависит от эмоционального и стратегического мышления\nигрока. Именно поэтому для каждой целевой задачи - своя игра! Одно ясно точно,\nкаждый участник покинет игровую площадку с багажом новых знаний, навыков и\nстратегий!	teambuildings	Сплотим вашу команду!
7	Выпускные 	выпускные	vipusknie	Отпразднуйте выпускной у нас!
1	ВЫЕЗДНЫЕ МЕРОПРИЯТИЯ	Задумали мероприятие?\nДетский или взрослый День Рождения? Корпоратив? Выпускной? ДЕВИЧНИК?\nТИМБИЛДИНГ? Выездное мероприятие - отличная идея если: Желанная дата уже занята\nв нашем пространстве - У вас уже есть локация мечты (кафе/пространство), но нет\nресурсов организовать все детально и самостоятельно - наша команда быстро и круто\nсделает это для вас.\nМы умеем:\n- организовать мероприятие от идеи до 100% крутого проведения\n- Собрать все «под ключ» или организовать отдельную программу\n- подобрать профессионалов для каждой задачи (музыканты, ведущие, кейтеринг,\nдекор)\n- координировать работу на площадке или локации\n- определить программу, которая впишется в вашу идею и закроет ваши задачи\n(Ролевые игры Игры -квесты Шоу - игры Квиз - игры Т-игры Музыкальные игры)	offSiteEvents	сделаем на выезде
29	ВЫЕЗДНЫЕ МЕРОПРИЯТИЯ	Задумали мероприятие?\nДетский или взрослый День Рождения? Корпоратив? Выпускной? ДЕВИЧНИК?\nТИМБИЛДИНГ? Выездное мероприятие - отличная идея если: Желанная дата уже занята\nв нашем пространстве - У вас уже есть локация мечты (кафе/пространство), но нет\nресурсов организовать все детально и самостоятельно - наша команда быстро и круто\nсделает это для вас.\nМы умеем:\n- организовать мероприятие от идеи до 100% крутого проведения\n- Собрать все «под ключ» или организовать отдельную программу\n- подобрать профессионалов для каждой задачи (музыканты, ведущие, кейтеринг,\nдекор)\n- координировать работу на площадке или локации\n- определить программу, которая впишется в вашу идею и закроет ваши задачи\n(Ролевые игры Игры -квесты Шоу - игры Квиз - игры Т-игры Музыкальные игры)	offSiteEvents	сделаем на выезде
30	Тимбилдинги	Компания начинается с идеи, но развивается, расширяется и\nмасштабируется только при условии вдохновленной, увлеченной,\nзамотивированной и сплоченной команды! Мы предлагаем\nорганизацию и проведение мероприятий в форме - бизнес-игр и\nтематических вечеринок с учетом ваших целей и задач! На\nтерритории пространства K.O.D., а также в выездном формате. Мы\n- профессиональные организаторы игр и событий для прокачки\nвашей команды!\nКакие плюсы\n- Игры укрепляет коммуникацию внутри команды\n- Игры формируют доверительную среду для сотрудничества\n- Игры учат правильному взаимодействию друг с другом\n- Игры определяют уровень ответственности каждого участника команды\n- Игры помогают выстроить новую стратегию в условиях изменчивого мира\n- Игры определяют правильные тактические действия каждого участника процесса\nКак проходят игры?\nВ основном, бизнес игры - это пространственные или настольные бизнес - карты, где\nконечная точка - цель компании в указанном временном разрезе. Ход каждого из\nигроков - непредсказуем и зависит от эмоционального и стратегического мышления\nигрока. Именно поэтому для каждой целевой задачи - своя игра! Одно ясно точно,\nкаждый участник покинет игровую площадку с багажом новых знаний, навыков и\nстратегий!	teambuildings	Сплотим вашу команду!
31	Выпускные 	выпускные	vipusknie	Отпразднуйте выпускной у нас!
\.


--
-- Data for Name: components_shared_dance_types; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_dance_types (id, title, description) FROM stdin;
2	BREAKING	Когда брейкер выходит на танцпол - публика замирает, открыв рот…Эти мощные, физически одаренные, красивые прокаченные парни и даже девушки - яркий пример того, что нет ничего невозможного! Стоять на голове, крутить, фризовать, танцевать на руках и замирать в воздухе…Этому может научиться каждый, кто любит чувствовать свое тело, свои неограниченные возможности! чувствует
3	K-POP COVER DANCE	K-Pop превратился в масштабную музыкальную субкультуру с миллионами поклонников во всём мире. Это направление вскружило голову молодежи своими яркими образами и эпатажностью в одежде. Стильные образы, умение передавать публике свое настроение, эмоции и мысли через синхронные и слаженные движения, подвижную мимику лица, ecОдновременное смешение в танце стилей  Hip-хоп Popping Locking Waacking Vogue Jazz Contemporary - это все про K-POP COVER DANCE.
1	HIP - HOP 2	Hip - hop культура разбивает все ограничения! Рожденная на улицах, она сочетает в себе музыкальную стилистику, более 15 танцевальных стилей, свободный образ мышления, фристайл и самоидентичность. То как одеваются хоперы, то как они двигаются и чувствуют ритм - это про СВОБОДУ! То как они умеют импровизировать и самовыражаться - это про УМЕНИЕ ЖИТЬ в балансе с миром и собой!
19	HIP - HOP 2	Hip - hop культура разбивает все ограничения! Рожденная на улицах, она сочетает в себе музыкальную стилистику, более 15 танцевальных стилей, свободный образ мышления, фристайл и самоидентичность. То как одеваются хоперы, то как они двигаются и чувствуют ритм - это про СВОБОДУ! То как они умеют импровизировать и самовыражаться - это про УМЕНИЕ ЖИТЬ в балансе с миром и собой!
20	BREAKING	Когда брейкер выходит на танцпол - публика замирает, открыв рот…Эти мощные, физически одаренные, красивые прокаченные парни и даже девушки - яркий пример того, что нет ничего невозможного! Стоять на голове, крутить, фризовать, танцевать на руках и замирать в воздухе…Этому может научиться каждый, кто любит чувствовать свое тело, свои неограниченные возможности! чувствует
21	K-POP COVER DANCE	K-Pop превратился в масштабную музыкальную субкультуру с миллионами поклонников во всём мире. Это направление вскружило голову молодежи своими яркими образами и эпатажностью в одежде. Стильные образы, умение передавать публике свое настроение, эмоции и мысли через синхронные и слаженные движения, подвижную мимику лица, ecОдновременное смешение в танце стилей  Hip-хоп Popping Locking Waacking Vogue Jazz Contemporary - это все про K-POP COVER DANCE.
\.


--
-- Data for Name: components_shared_faq_items; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_faq_items (id, question, answer) FROM stdin;
7	вопрос	ответ
8	вопрос	ответ
5	Какую тему вечеринки выбрать?	Вы можете отталкиваться от любой темы, которая вам интересна: телесериал, мультфильм, компьютерная игра, музыкальный стиль, кинолента, аниме…Все, что нравится вам или вашему ребенку!
9	Какую тему вечеринки выбрать?	Вы можете отталкиваться от любой темы, которая вам интересна: телесериал, мультфильм, компьютерная игра, музыкальный стиль, кинолента, аниме…Все, что нравится вам или вашему ребенку!
10	Вопрос 	 ответ ответ ответответ ответ ответответ ответ ответответ ответ ответответ ответ ответответ ответ ответ
11	Вопрос 2 	ответ ответ ответответ ответ ответответ ответ ответответ ответ ответ
12	Вопрос 3 	ответ ответ ответответ ответ ответответ ответ ответответ ответ ответответ ответ ответответ ответ ответ
45	Вопрос 	 ответ ответ ответответ ответ ответответ ответ ответответ ответ ответответ ответ ответответ ответ ответ
46	Вопрос 2 	ответ ответ ответответ ответ ответответ ответ ответответ ответ ответ
25	Вопрос 1	 ответответответответответответответответответответответответответответ
26	Вопрос 2	ответ ответ ответответ
40	Вопрос 1	 ответответответответответответответответответответответответответответ
41	Вопрос 2	ответ ответ ответответ
47	Вопрос 3 	ответ ответ ответответ ответ ответответ ответ ответответ ответ ответответ ответ ответответ ответ ответ
1	вопрос	ответ
48	вопрос	ответ
\.


--
-- Data for Name: components_shared_fishkis; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_fishkis (id, title, description) FROM stdin;
4	Тематическое оформление	Полное преображение пространства в соответствии с выбранной темой\n
5	Фото и видеосъемка	Профессиональная съемка для сохранения воспоминаний о мероприятии\n
6	Кейтеринг	Организация питания любой сложности от фуршета до банкета\n
7	Бесценный опыт	Описание
8	Неограниченные возвожности	Описание2\n
1	Уникальные сценарии	Индивидуальный подход к каждому мероприятию с учетом всех пожеланий\n
2	Профессиональные ведущие	Опытные аниматоры и ведущие, умеющие работать с любой аудиторией\n
3	Современное оборудование	Качественный звук, свет и спецэффекты для создания нужной атмосферы\n
41	Уникальные сценарии	Индивидуальный подход к каждому мероприятию с учетом всех пожеланий\n
42	Профессиональные ведущие	Опытные аниматоры и ведущие, умеющие работать с любой аудиторией\n
43	Современное оборудование	Качественный звук, свет и спецэффекты для создания нужной атмосферы\n
44	Тематическое оформление	Полное преображение пространства в соответствии с выбранной темой\n
45	Фото и видеосъемка	Профессиональная съемка для сохранения воспоминаний о мероприятии\n
46	Кейтеринг	Организация питания любой сложности от фуршета до банкета\n
47	Бесценный опыт	Описание
48	Неограниченные возвожности	Описание2\n
\.


--
-- Data for Name: components_shared_page_headers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_page_headers (id, title, description) FROM stdin;
11	Что мы делаем?	Мы регулярно организуем не только частные мероприятия но и открытые вечеринки для детей, подростков и взрослых! Вдохновляясь фильмами, музыкой, книгами, мы хотим делиться эмоциями со всеми. На территории пространства KOD регулярно проходят кайфовые развлекательно - смысловые вечеринки в виде кинопросмотров, игр, фотосессий и других форматов! Ближайшие мероприятия вы можете посмотреть в нашем календаре!
9	Заголовок секции 	Мы вдохновляем детей на личные открытия, переосмысление и апгрейт. Доверяя интуиции, основываясь на опыте. Здесь приобретаются навыки, которые остаются с ними на всю жизнь.
12	Что мы делаем?	Мы регулярно организуем не только частные мероприятия но и открытые вечеринки для детей, подростков и взрослых! Вдохновляясь фильмами, музыкой, книгами, мы хотим делиться эмоциями со всеми. На территории пространства KOD регулярно проходят кайфовые развлекательно - смысловые вечеринки в виде кинопросмотров, игр, фотосессий и других форматов! Ближайшие мероприятия вы можете посмотреть в нашем календаре!
14	Заголовок секции 	Мы вдохновляем детей на личные открытия, переосмысление и апгрейт. Доверяя интуиции, основываясь на опыте. Здесь приобретаются навыки, которые остаются с ними на всю жизнь.
3	Что мы можем?	Собрать для вас крутую вечеринку - наш профессиональный навык. Мы умеем создавать события, которые западают в души и сердца людей! Наши постоянные клиенты дети и взрослые бронируют пространство на год вперед, зная что мы никогда не повторяемся и их вечеринка станет особенной снова!
19	Танцы в K.O.D.	С 2020 года в арт-пространстве K.O.D. собираются фанаты своих физических возможностей, и они же стремятся к non-stop развитию своего физического интеллекта через танец.\nДоказано: люди с развитым физическим интеллектом отлично скоординированы, выносливы, грациозны, обладают ловкостью, легкостью и здоровым отношением к своему телу. \nТакие люди прекрасно ориентируются в пространстве и легче избавляются от телесных и ментальных блоков. \n«Физический интеллект — это способность человека ощущать, понимать и эффективно управлять своим телом. Он тесно связан с общим состоянием здоровья, чувством комфорта и возможностью физически реализовать свои стремления и цели.»\nПрисоединяйтесь к нашей команде физически - одаренных и мощных людей!\n
26	Танцы в K.O.D.	С 2020 года в арт-пространстве K.O.D. собираются фанаты своих физических возможностей, и они же стремятся к non-stop развитию своего физического интеллекта через танец.\nДоказано: люди с развитым физическим интеллектом отлично скоординированы, выносливы, грациозны, обладают ловкостью, легкостью и здоровым отношением к своему телу. \nТакие люди прекрасно ориентируются в пространстве и легче избавляются от телесных и ментальных блоков. \n«Физический интеллект — это способность человека ощущать, понимать и эффективно управлять своим телом. Он тесно связан с общим состоянием здоровья, чувством комфорта и возможностью физически реализовать свои стремления и цели.»\nПрисоединяйтесь к нашей команде физически - одаренных и мощных людей!\n
28	Что мы можем?	Собрать для вас крутую вечеринку - наш профессиональный навык. Мы умеем создавать события, которые западают в души и сердца людей! Наши постоянные клиенты дети и взрослые бронируют пространство на год вперед, зная что мы никогда не повторяемся и их вечеринка станет особенной снова!
1	Миссия «Эмоциональный интеллект. Апргрейт	- Взять эмоции под контроль - Уметь анализировать - Анализ - Стратегия - Критическое мышление - 1000 новых вариантов - Знать свои эмоции\nУправлять эмоциями\nМотивировать самого себя\nРаспознавать чувства других людей\nПоддерживать здоровые взаимоотношения - это все про Эмоциональный интеллект Как будучи взрослым апгрейдить свои навыки и стать успешным в бизнесе, работе и личной жизни? Можно легко, играя и программируя жизненные ситуации! В нашем пространстве проводятся развлекательные и одновременно трансформационные игры! Играя вы касаетесь своего подсознательного и сталкиваетесь с реальностью! Задаете вопросы и находите ответы, разворачивая вектор своего мышления! Эмоциональный интеллект теперь работает на вас! Собирайтесь с друзьями или приходите в одиночку! Здесь вы познакомитесь с интересными людьми!\n
29	Миссия «Эмоциональный интеллект. Апргрейт	- Взять эмоции под контроль - Уметь анализировать - Анализ - Стратегия - Критическое мышление - 1000 новых вариантов - Знать свои эмоции\nУправлять эмоциями\nМотивировать самого себя\nРаспознавать чувства других людей\nПоддерживать здоровые взаимоотношения - это все про Эмоциональный интеллект Как будучи взрослым апгрейдить свои навыки и стать успешным в бизнесе, работе и личной жизни? Можно легко, играя и программируя жизненные ситуации! В нашем пространстве проводятся развлекательные и одновременно трансформационные игры! Играя вы касаетесь своего подсознательного и сталкиваетесь с реальностью! Задаете вопросы и находите ответы, разворачивая вектор своего мышления! Эмоциональный интеллект теперь работает на вас! Собирайтесь с друзьями или приходите в одиночку! Здесь вы познакомитесь с интересными людьми!\n
\.


--
-- Data for Name: components_shared_points; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_points (id, point) FROM stdin;
1	ура
3	ehf
4	uhhh
8	ура
9	ehf
10	uhhh
\.


--
-- Data for Name: components_shared_prices; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_prices (id, title, short_description, price) FROM stdin;
1	Разовое посещение	Для тех, кто хочет попробовать	800
4	Разовое посещение	Для тех, кто хочет попробовать	800
\.


--
-- Data for Name: components_shared_prices_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_prices_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	shared.points	points	1
4	1	3	shared.points	points	2
5	1	4	shared.points	points	3
12	4	8	shared.points	points	1
13	4	9	shared.points	points	2
14	4	10	shared.points	points	3
\.


--
-- Data for Name: components_shared_testimonials; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_testimonials (id, text, author) FROM stdin;
1	Отзыв отзыв отзыв отзыв отзыв отзыв отзыв отзыв 	Автор отзыва
3	Отзыв отзыв отзыв отзыв отзыв отзыв отзыв отзыв 	Автор отзыва
4	Организовывали день рождения дочери в стиле K-POP.	Анна Михайлова
5	Отмечали корпоратив в тематике 'Игра престолов'.	Дмитрий
6	Праздновали выпускной 11 класса. Формат квеста с элементами тематической вечеринки - это было гениально!	Елена
22	Организовывали день рождения дочери в стиле K-POP.	Анна Михайлова
23	Отмечали корпоратив в тематике 'Игра престолов'.	Дмитрий
24	Праздновали выпускной 11 класса. Формат квеста с элементами тематической вечеринки - это было гениально!	Елена
25	отзыв	автор
26	отзыв	автор
\.


--
-- Data for Name: components_shared_trainers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_shared_trainers (id, name, description) FROM stdin;
1	София	Хип-хоп
2	София	Хип-хоп
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contacts (id, document_id, name, email, phone, message, form_type, additional_data, processed, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	wobx2lwl3j5i586w7ckqq624	яо	cherepnyayar@gmail.com	89956563053	Заявка на аренду пространства: АРЕНДА ПРОСТРАНСТВА	Аренда пространства	{"comments": "Заявка на аренду пространства: АРЕНДА ПРОСТРАНСТВА", "eventDate": "5204-02-20", "eventType": "lh", "guestCount": "25", "contactMethod": "telegram"}	f	2025-05-14 16:16:35.224	2025-05-14 16:16:35.224	2025-05-14 16:16:35.22	\N	\N	\N
2	dprocxfmd9xy5xb9dwk8iwxg	123	123@mail.ru	123	Хочу записаться на BREAKING	dance-registration	{"age": "12", "level": "amateur"}	f	2025-05-15 18:12:10.635	2025-05-15 18:12:10.635	2025-05-15 18:12:10.631	\N	\N	\N
3	isdcsjm3zjo3e7gunccjuiu2	игорь	\N	98	\N	coffee-order	{"date": "2005-12-12", "milk": "classic", "time": "14:00", "volume": "300ml", "cappuccino": "21"}	f	2025-05-15 21:07:43.905	2025-05-15 21:07:43.905	2025-05-15 21:07:43.901	\N	\N	\N
4	oygh75cc2ek8bfkewb6sli4r	\N	ca@mail.ru	\N	\N	Подписка на рассылку	{"consent": "Да"}	f	2025-05-16 08:12:46.395	2025-05-16 08:12:46.395	2025-05-16 08:12:46.384	\N	\N	\N
5	p67ht7jhq9citzfxn124icsd	\N	ca@mail.ru	\N	\N	Подписка на рассылку	{"consent": "Да"}	f	2025-05-16 08:14:14.478	2025-05-16 08:14:14.478	2025-05-16 08:14:14.474	\N	\N	\N
6	s6xgpwsh2uy483t2m4o3qd51	\N	ca@mail.ru	\N	\N	Подписка на рассылку	{"consent": "Да"}	f	2025-05-16 08:15:44.45	2025-05-16 08:15:44.45	2025-05-16 08:15:44.448	\N	\N	\N
\.


--
-- Data for Name: dance_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.dance_pages (id, document_id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	q5jb4ekgtgcumepflgd55jbo	Танцы в K.O.D	Присоединяйтесь к нашей команде физически одаренных и мощных людей!	2025-05-14 17:26:12.381	2025-05-15 19:57:48.888	\N	1	1	\N
9	q5jb4ekgtgcumepflgd55jbo	Танцы в K.O.D	Присоединяйтесь к нашей команде физически одаренных и мощных людей!	2025-05-14 17:26:12.381	2025-05-15 19:57:48.888	2025-05-15 19:57:48.981	1	1	\N
\.


--
-- Data for Name: dance_pages_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.dance_pages_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
75	9	40	shared.faq-item	questions	1
76	9	41	shared.faq-item	questions	2
77	9	19	shared.dance-types	danceTypes	1
78	9	20	shared.dance-types	danceTypes	2
79	9	21	shared.dance-types	danceTypes	3
80	9	26	shared.page-header	aboutUs	1
81	9	4	shared.prices	prices	1
82	9	2	shared.trainers	trainer	1
1	1	25	shared.faq-item	questions	4
2	1	26	shared.faq-item	questions	6
5	1	1	shared.dance-types	danceTypes	2
6	1	2	shared.dance-types	danceTypes	5
7	1	3	shared.dance-types	danceTypes	7
8	1	19	shared.page-header	aboutUs	3
45	1	1	shared.prices	prices	1
74	1	1	shared.trainers	trainer	1
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.events (id, document_id, title, date, type, short_description, full_description, price, max_participants, current_participants, location, duration, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, event_link) FROM stdin;
1	af0uuxj5co69mno0p8wvpvem	 Пространство вариантов 18+	2025-05-15 13:30:00	openParties	Игры короткая 	Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры 	2000.00	20	10	Малый зал	2 часа	sobytie	2025-05-14 21:58:23.455	2025-05-16 12:04:39.263	\N	1	1	\N	\N
4	af0uuxj5co69mno0p8wvpvem	 Пространство вариантов 18+	2025-05-15 13:30:00	openParties	Игры короткая 	Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры Игры 	2000.00	20	10	Малый зал	2 часа	sobytie	2025-05-14 21:58:23.455	2025-05-16 12:04:39.263	2025-05-16 12:04:39.286	1	1	\N	\N
5	ftu43xxcogx7arqwrx67ehqe	тест1	2025-05-19 15:30:00	adults	ив	ивви	2000.00	20	10	Малый зал	2 часа	test1	2025-05-19 12:46:53.452	2025-05-19 12:46:53.452	\N	1	1	\N	https://disk.yandex.ru/d/OExX843rtpj8CA
6	ftu43xxcogx7arqwrx67ehqe	тест1	2025-05-19 15:30:00	adults	ив	ивви	2000.00	20	10	Малый зал	2 часа	test1	2025-05-19 12:46:53.452	2025-05-19 12:46:53.452	2025-05-19 12:46:53.486	1	1	\N	https://disk.yandex.ru/d/OExX843rtpj8CA
7	lpznmh0iamvgd0y00trl0u1n	Тест2	2025-05-24 11:30:00	openParties	игоа	игра игра	2000.00	20	12	Малый зал	2 часа	test2	2025-05-23 15:45:59.522	2025-05-23 15:45:59.522	\N	1	1	\N	https://disk.yandex.ru/d/OExX843rtpj8CA
8	lpznmh0iamvgd0y00trl0u1n	Тест2	2025-05-24 11:30:00	openParties	игоа	игра игра	2000.00	20	12	Малый зал	2 часа	test2	2025-05-23 15:45:59.522	2025-05-23 15:45:59.522	2025-05-23 15:45:59.548	1	1	\N	https://disk.yandex.ru/d/OExX843rtpj8CA
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	bnwb43tv0a36j0rfjurscmwu	creator.png	\N	\N	1280	960	{"large": {"ext": ".png", "url": "/uploads/large_creator_35670cc2d8.png", "hash": "large_creator_35670cc2d8", "mime": "image/png", "name": "large_creator.png", "path": null, "size": 65.15, "width": 1000, "height": 750, "sizeInBytes": 65152}, "small": {"ext": ".png", "url": "/uploads/small_creator_35670cc2d8.png", "hash": "small_creator_35670cc2d8", "mime": "image/png", "name": "small_creator.png", "path": null, "size": 24.43, "width": 500, "height": 375, "sizeInBytes": 24432}, "medium": {"ext": ".png", "url": "/uploads/medium_creator_35670cc2d8.png", "hash": "medium_creator_35670cc2d8", "mime": "image/png", "name": "medium_creator.png", "path": null, "size": 43.8, "width": 750, "height": 562, "sizeInBytes": 43800}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_creator_35670cc2d8.png", "hash": "thumbnail_creator_35670cc2d8", "mime": "image/png", "name": "thumbnail_creator.png", "path": null, "size": 6.98, "width": 208, "height": 156, "sizeInBytes": 6980}}	creator_35670cc2d8	.png	image/png	110.81	/uploads/creator_35670cc2d8.png	\N	local	\N	/	2025-05-14 15:54:20.988	2025-05-14 15:54:20.988	2025-05-14 15:54:20.989	1	1	\N
5	kzwhxf12hzvna2jzs6lwyzol	GAV08449.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_08449_7179723318.jpg", "hash": "large_GAV_08449_7179723318", "mime": "image/jpeg", "name": "large_GAV08449.jpg", "path": null, "size": 126.42, "width": 1000, "height": 667, "sizeInBytes": 126416}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_08449_7179723318.jpg", "hash": "small_GAV_08449_7179723318", "mime": "image/jpeg", "name": "small_GAV08449.jpg", "path": null, "size": 39.39, "width": 500, "height": 334, "sizeInBytes": 39391}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_08449_7179723318.jpg", "hash": "medium_GAV_08449_7179723318", "mime": "image/jpeg", "name": "medium_GAV08449.jpg", "path": null, "size": 77.73, "width": 750, "height": 500, "sizeInBytes": 77733}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_08449_7179723318.jpg", "hash": "thumbnail_GAV_08449_7179723318", "mime": "image/jpeg", "name": "thumbnail_GAV08449.jpg", "path": null, "size": 11.87, "width": 234, "height": 156, "sizeInBytes": 11866}}	GAV_08449_7179723318	.jpg	image/jpeg	1757.60	/uploads/GAV_08449_7179723318.jpg	\N	local	\N	/1	2025-05-14 16:28:12.494	2025-05-14 16:28:12.494	2025-05-14 16:28:12.495	1	1	\N
6	o7vfhcj9lbp2y39idr0z4ymx	GAV08932.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_08932_a3496a4eed.jpg", "hash": "large_GAV_08932_a3496a4eed", "mime": "image/jpeg", "name": "large_GAV08932.jpg", "path": null, "size": 100.83, "width": 1000, "height": 667, "sizeInBytes": 100826}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_08932_a3496a4eed.jpg", "hash": "small_GAV_08932_a3496a4eed", "mime": "image/jpeg", "name": "small_GAV08932.jpg", "path": null, "size": 33.55, "width": 500, "height": 334, "sizeInBytes": 33546}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_08932_a3496a4eed.jpg", "hash": "medium_GAV_08932_a3496a4eed", "mime": "image/jpeg", "name": "medium_GAV08932.jpg", "path": null, "size": 63.64, "width": 750, "height": 500, "sizeInBytes": 63640}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_08932_a3496a4eed.jpg", "hash": "thumbnail_GAV_08932_a3496a4eed", "mime": "image/jpeg", "name": "thumbnail_GAV08932.jpg", "path": null, "size": 10.6, "width": 234, "height": 156, "sizeInBytes": 10595}}	GAV_08932_a3496a4eed	.jpg	image/jpeg	1953.51	/uploads/GAV_08932_a3496a4eed.jpg	\N	local	\N	/1	2025-05-14 16:28:12.708	2025-05-14 16:28:12.708	2025-05-14 16:28:12.709	1	1	\N
7	epw7119zuwoqxkgohzr75a4m	GAV08828.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_08828_cd6dab4e54.jpg", "hash": "large_GAV_08828_cd6dab4e54", "mime": "image/jpeg", "name": "large_GAV08828.jpg", "path": null, "size": 58.26, "width": 1000, "height": 667, "sizeInBytes": 58256}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_08828_cd6dab4e54.jpg", "hash": "small_GAV_08828_cd6dab4e54", "mime": "image/jpeg", "name": "small_GAV08828.jpg", "path": null, "size": 17.56, "width": 500, "height": 334, "sizeInBytes": 17562}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_08828_cd6dab4e54.jpg", "hash": "medium_GAV_08828_cd6dab4e54", "mime": "image/jpeg", "name": "medium_GAV08828.jpg", "path": null, "size": 35.03, "width": 750, "height": 500, "sizeInBytes": 35031}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_08828_cd6dab4e54.jpg", "hash": "thumbnail_GAV_08828_cd6dab4e54", "mime": "image/jpeg", "name": "thumbnail_GAV08828.jpg", "path": null, "size": 5.56, "width": 234, "height": 156, "sizeInBytes": 5557}}	GAV_08828_cd6dab4e54	.jpg	image/jpeg	1547.80	/uploads/GAV_08828_cd6dab4e54.jpg	\N	local	\N	/1	2025-05-14 16:28:12.817	2025-05-14 16:28:12.817	2025-05-14 16:28:12.817	1	1	\N
8	w6apnh38hn1r3k5i45a27z8y	GAV08446.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_08446_c389cbb036.jpg", "hash": "large_GAV_08446_c389cbb036", "mime": "image/jpeg", "name": "large_GAV08446.jpg", "path": null, "size": 124.92, "width": 1000, "height": 667, "sizeInBytes": 124918}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_08446_c389cbb036.jpg", "hash": "small_GAV_08446_c389cbb036", "mime": "image/jpeg", "name": "small_GAV08446.jpg", "path": null, "size": 38.93, "width": 500, "height": 334, "sizeInBytes": 38926}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_08446_c389cbb036.jpg", "hash": "medium_GAV_08446_c389cbb036", "mime": "image/jpeg", "name": "medium_GAV08446.jpg", "path": null, "size": 76.61, "width": 750, "height": 500, "sizeInBytes": 76607}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_08446_c389cbb036.jpg", "hash": "thumbnail_GAV_08446_c389cbb036", "mime": "image/jpeg", "name": "thumbnail_GAV08446.jpg", "path": null, "size": 11.72, "width": 234, "height": 156, "sizeInBytes": 11719}}	GAV_08446_c389cbb036	.jpg	image/jpeg	1757.46	/uploads/GAV_08446_c389cbb036.jpg	\N	local	\N	/1	2025-05-14 16:28:13.05	2025-05-14 16:28:13.05	2025-05-14 16:28:13.05	1	1	\N
9	gyaxmu9ohsd15lthpv38hwij	GAV08875.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_08875_20a73b90f3.jpg", "hash": "large_GAV_08875_20a73b90f3", "mime": "image/jpeg", "name": "large_GAV08875.jpg", "path": null, "size": 82.25, "width": 1000, "height": 667, "sizeInBytes": 82251}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_08875_20a73b90f3.jpg", "hash": "small_GAV_08875_20a73b90f3", "mime": "image/jpeg", "name": "small_GAV08875.jpg", "path": null, "size": 27.7, "width": 500, "height": 334, "sizeInBytes": 27699}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_08875_20a73b90f3.jpg", "hash": "medium_GAV_08875_20a73b90f3", "mime": "image/jpeg", "name": "medium_GAV08875.jpg", "path": null, "size": 52.42, "width": 750, "height": 500, "sizeInBytes": 52424}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_08875_20a73b90f3.jpg", "hash": "thumbnail_GAV_08875_20a73b90f3", "mime": "image/jpeg", "name": "thumbnail_GAV08875.jpg", "path": null, "size": 8.83, "width": 234, "height": 156, "sizeInBytes": 8829}}	GAV_08875_20a73b90f3	.jpg	image/jpeg	1632.67	/uploads/GAV_08875_20a73b90f3.jpg	\N	local	\N	/1	2025-05-14 16:28:13.324	2025-05-14 16:28:13.324	2025-05-14 16:28:13.325	1	1	\N
10	l7reks6ywlgvy57ab9bvipdt	GAV08654.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_08654_c6d56a03b3.jpg", "hash": "large_GAV_08654_c6d56a03b3", "mime": "image/jpeg", "name": "large_GAV08654.jpg", "path": null, "size": 152, "width": 1000, "height": 667, "sizeInBytes": 152000}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_08654_c6d56a03b3.jpg", "hash": "small_GAV_08654_c6d56a03b3", "mime": "image/jpeg", "name": "small_GAV08654.jpg", "path": null, "size": 46.19, "width": 500, "height": 334, "sizeInBytes": 46191}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_08654_c6d56a03b3.jpg", "hash": "medium_GAV_08654_c6d56a03b3", "mime": "image/jpeg", "name": "medium_GAV08654.jpg", "path": null, "size": 92.83, "width": 750, "height": 500, "sizeInBytes": 92828}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_08654_c6d56a03b3.jpg", "hash": "thumbnail_GAV_08654_c6d56a03b3", "mime": "image/jpeg", "name": "thumbnail_GAV08654.jpg", "path": null, "size": 12.9, "width": 234, "height": 156, "sizeInBytes": 12901}}	GAV_08654_c6d56a03b3	.jpg	image/jpeg	2189.02	/uploads/GAV_08654_c6d56a03b3.jpg	\N	local	\N	/1	2025-05-14 16:28:13.511	2025-05-14 16:28:13.511	2025-05-14 16:28:13.512	1	1	\N
11	nmxygjr26d5vankxz3k09uut	GAV08966.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_08966_28bdfe94bc.jpg", "hash": "large_GAV_08966_28bdfe94bc", "mime": "image/jpeg", "name": "large_GAV08966.jpg", "path": null, "size": 50.52, "width": 1000, "height": 667, "sizeInBytes": 50517}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_08966_28bdfe94bc.jpg", "hash": "small_GAV_08966_28bdfe94bc", "mime": "image/jpeg", "name": "small_GAV08966.jpg", "path": null, "size": 17.61, "width": 500, "height": 334, "sizeInBytes": 17614}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_08966_28bdfe94bc.jpg", "hash": "medium_GAV_08966_28bdfe94bc", "mime": "image/jpeg", "name": "medium_GAV08966.jpg", "path": null, "size": 32.27, "width": 750, "height": 500, "sizeInBytes": 32267}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_08966_28bdfe94bc.jpg", "hash": "thumbnail_GAV_08966_28bdfe94bc", "mime": "image/jpeg", "name": "thumbnail_GAV08966.jpg", "path": null, "size": 5.86, "width": 234, "height": 156, "sizeInBytes": 5856}}	GAV_08966_28bdfe94bc	.jpg	image/jpeg	1147.85	/uploads/GAV_08966_28bdfe94bc.jpg	\N	local	\N	/1	2025-05-14 16:28:15.021	2025-05-14 16:28:15.021	2025-05-14 16:28:15.021	1	1	\N
12	ub4pdymx530fz1e2gpqw4zrn	GAV09026.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_09026_f370451a5b.jpg", "hash": "large_GAV_09026_f370451a5b", "mime": "image/jpeg", "name": "large_GAV09026.jpg", "path": null, "size": 123.37, "width": 1000, "height": 667, "sizeInBytes": 123373}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_09026_f370451a5b.jpg", "hash": "small_GAV_09026_f370451a5b", "mime": "image/jpeg", "name": "small_GAV09026.jpg", "path": null, "size": 38.3, "width": 500, "height": 334, "sizeInBytes": 38302}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_09026_f370451a5b.jpg", "hash": "medium_GAV_09026_f370451a5b", "mime": "image/jpeg", "name": "medium_GAV09026.jpg", "path": null, "size": 76.29, "width": 750, "height": 500, "sizeInBytes": 76291}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_09026_f370451a5b.jpg", "hash": "thumbnail_GAV_09026_f370451a5b", "mime": "image/jpeg", "name": "thumbnail_GAV09026.jpg", "path": null, "size": 11.25, "width": 234, "height": 156, "sizeInBytes": 11251}}	GAV_09026_f370451a5b	.jpg	image/jpeg	1987.53	/uploads/GAV_09026_f370451a5b.jpg	\N	local	\N	/1	2025-05-14 16:28:15.157	2025-05-14 16:28:15.157	2025-05-14 16:28:15.158	1	1	\N
13	vgm2xw9kbhgv9samgc8lv4e4	GAV09136.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_09136_760984fb12.jpg", "hash": "large_GAV_09136_760984fb12", "mime": "image/jpeg", "name": "large_GAV09136.jpg", "path": null, "size": 105.58, "width": 1000, "height": 667, "sizeInBytes": 105584}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_09136_760984fb12.jpg", "hash": "small_GAV_09136_760984fb12", "mime": "image/jpeg", "name": "small_GAV09136.jpg", "path": null, "size": 33.02, "width": 500, "height": 334, "sizeInBytes": 33015}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_09136_760984fb12.jpg", "hash": "medium_GAV_09136_760984fb12", "mime": "image/jpeg", "name": "medium_GAV09136.jpg", "path": null, "size": 65.28, "width": 750, "height": 500, "sizeInBytes": 65281}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_09136_760984fb12.jpg", "hash": "thumbnail_GAV_09136_760984fb12", "mime": "image/jpeg", "name": "thumbnail_GAV09136.jpg", "path": null, "size": 9.84, "width": 234, "height": 156, "sizeInBytes": 9843}}	GAV_09136_760984fb12	.jpg	image/jpeg	2206.97	/uploads/GAV_09136_760984fb12.jpg	\N	local	\N	/1	2025-05-14 16:28:15.225	2025-05-14 16:28:15.225	2025-05-14 16:28:15.225	1	1	\N
14	vq1z0snmmcjg1mqszk4o04i8	GAV09247.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_09247_9aa2dc6c52.jpg", "hash": "large_GAV_09247_9aa2dc6c52", "mime": "image/jpeg", "name": "large_GAV09247.jpg", "path": null, "size": 71.52, "width": 1000, "height": 667, "sizeInBytes": 71519}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_09247_9aa2dc6c52.jpg", "hash": "small_GAV_09247_9aa2dc6c52", "mime": "image/jpeg", "name": "small_GAV09247.jpg", "path": null, "size": 25.71, "width": 500, "height": 334, "sizeInBytes": 25714}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_09247_9aa2dc6c52.jpg", "hash": "medium_GAV_09247_9aa2dc6c52", "mime": "image/jpeg", "name": "medium_GAV09247.jpg", "path": null, "size": 47, "width": 750, "height": 500, "sizeInBytes": 47001}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_09247_9aa2dc6c52.jpg", "hash": "thumbnail_GAV_09247_9aa2dc6c52", "mime": "image/jpeg", "name": "thumbnail_GAV09247.jpg", "path": null, "size": 8.5, "width": 234, "height": 156, "sizeInBytes": 8499}}	GAV_09247_9aa2dc6c52	.jpg	image/jpeg	953.01	/uploads/GAV_09247_9aa2dc6c52.jpg	\N	local	\N	/1	2025-05-14 16:28:15.365	2025-05-14 16:28:15.365	2025-05-14 16:28:15.366	1	1	\N
15	cpuhz46kxivpe8jr3qrxr1zc	GAV09035.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_09035_fd0b001289.jpg", "hash": "large_GAV_09035_fd0b001289", "mime": "image/jpeg", "name": "large_GAV09035.jpg", "path": null, "size": 83.82, "width": 1000, "height": 667, "sizeInBytes": 83815}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_09035_fd0b001289.jpg", "hash": "small_GAV_09035_fd0b001289", "mime": "image/jpeg", "name": "small_GAV09035.jpg", "path": null, "size": 25.96, "width": 500, "height": 334, "sizeInBytes": 25958}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_09035_fd0b001289.jpg", "hash": "medium_GAV_09035_fd0b001289", "mime": "image/jpeg", "name": "medium_GAV09035.jpg", "path": null, "size": 50.92, "width": 750, "height": 500, "sizeInBytes": 50917}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_09035_fd0b001289.jpg", "hash": "thumbnail_GAV_09035_fd0b001289", "mime": "image/jpeg", "name": "thumbnail_GAV09035.jpg", "path": null, "size": 8.36, "width": 234, "height": 156, "sizeInBytes": 8364}}	GAV_09035_fd0b001289	.jpg	image/jpeg	1841.82	/uploads/GAV_09035_fd0b001289.jpg	\N	local	\N	/1	2025-05-14 16:28:15.824	2025-05-14 16:28:15.824	2025-05-14 16:28:15.824	1	1	\N
16	e0faw8r9ay7u1vo5cyy8j5ns	GAV09157.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_09157_b0f2e91b9a.jpg", "hash": "large_GAV_09157_b0f2e91b9a", "mime": "image/jpeg", "name": "large_GAV09157.jpg", "path": null, "size": 112.4, "width": 1000, "height": 667, "sizeInBytes": 112397}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_09157_b0f2e91b9a.jpg", "hash": "small_GAV_09157_b0f2e91b9a", "mime": "image/jpeg", "name": "small_GAV09157.jpg", "path": null, "size": 36.27, "width": 500, "height": 334, "sizeInBytes": 36274}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_09157_b0f2e91b9a.jpg", "hash": "medium_GAV_09157_b0f2e91b9a", "mime": "image/jpeg", "name": "medium_GAV09157.jpg", "path": null, "size": 70.3, "width": 750, "height": 500, "sizeInBytes": 70304}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_09157_b0f2e91b9a.jpg", "hash": "thumbnail_GAV_09157_b0f2e91b9a", "mime": "image/jpeg", "name": "thumbnail_GAV09157.jpg", "path": null, "size": 11.06, "width": 234, "height": 156, "sizeInBytes": 11064}}	GAV_09157_b0f2e91b9a	.jpg	image/jpeg	1720.59	/uploads/GAV_09157_b0f2e91b9a.jpg	\N	local	\N	/1	2025-05-14 16:28:16.038	2025-05-14 16:28:16.038	2025-05-14 16:28:16.039	1	1	\N
17	naz70rrbbf866sjmetbbc6cx	GAV09296.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_09296_3ffeecddd1.jpg", "hash": "large_GAV_09296_3ffeecddd1", "mime": "image/jpeg", "name": "large_GAV09296.jpg", "path": null, "size": 83.7, "width": 1000, "height": 667, "sizeInBytes": 83701}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_09296_3ffeecddd1.jpg", "hash": "small_GAV_09296_3ffeecddd1", "mime": "image/jpeg", "name": "small_GAV09296.jpg", "path": null, "size": 30.49, "width": 500, "height": 334, "sizeInBytes": 30490}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_09296_3ffeecddd1.jpg", "hash": "medium_GAV_09296_3ffeecddd1", "mime": "image/jpeg", "name": "medium_GAV09296.jpg", "path": null, "size": 55.05, "width": 750, "height": 500, "sizeInBytes": 55048}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_09296_3ffeecddd1.jpg", "hash": "thumbnail_GAV_09296_3ffeecddd1", "mime": "image/jpeg", "name": "thumbnail_GAV09296.jpg", "path": null, "size": 10.18, "width": 234, "height": 156, "sizeInBytes": 10177}}	GAV_09296_3ffeecddd1	.jpg	image/jpeg	1099.65	/uploads/GAV_09296_3ffeecddd1.jpg	\N	local	\N	/1	2025-05-14 16:28:16.5	2025-05-14 16:28:16.5	2025-05-14 16:28:16.5	1	1	\N
18	bu71m63wjbsippndsh35xgo5	GAV09300.jpg	\N	\N	4500	3000	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_09300_d1389cc253.jpg", "hash": "large_GAV_09300_d1389cc253", "mime": "image/jpeg", "name": "large_GAV09300.jpg", "path": null, "size": 76.69, "width": 1000, "height": 667, "sizeInBytes": 76687}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_09300_d1389cc253.jpg", "hash": "small_GAV_09300_d1389cc253", "mime": "image/jpeg", "name": "small_GAV09300.jpg", "path": null, "size": 25.82, "width": 500, "height": 334, "sizeInBytes": 25824}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_09300_d1389cc253.jpg", "hash": "medium_GAV_09300_d1389cc253", "mime": "image/jpeg", "name": "medium_GAV09300.jpg", "path": null, "size": 48.55, "width": 750, "height": 500, "sizeInBytes": 48547}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_09300_d1389cc253.jpg", "hash": "thumbnail_GAV_09300_d1389cc253", "mime": "image/jpeg", "name": "thumbnail_GAV09300.jpg", "path": null, "size": 8.3, "width": 234, "height": 156, "sizeInBytes": 8297}}	GAV_09300_d1389cc253	.jpg	image/jpeg	1259.29	/uploads/GAV_09300_d1389cc253.jpg	\N	local	\N	/1	2025-05-14 16:28:16.674	2025-05-14 16:28:16.674	2025-05-14 16:28:16.674	1	1	\N
19	xvpjwzty8z0fls88uld5apjw	GAV09387.jpg	\N	\N	3000	4500	{"large": {"ext": ".jpg", "url": "/uploads/large_GAV_09387_02064cfa42.jpg", "hash": "large_GAV_09387_02064cfa42", "mime": "image/jpeg", "name": "large_GAV09387.jpg", "path": null, "size": 138.02, "width": 667, "height": 1000, "sizeInBytes": 138016}, "small": {"ext": ".jpg", "url": "/uploads/small_GAV_09387_02064cfa42.jpg", "hash": "small_GAV_09387_02064cfa42", "mime": "image/jpeg", "name": "small_GAV09387.jpg", "path": null, "size": 47.16, "width": 334, "height": 500, "sizeInBytes": 47162}, "medium": {"ext": ".jpg", "url": "/uploads/medium_GAV_09387_02064cfa42.jpg", "hash": "medium_GAV_09387_02064cfa42", "mime": "image/jpeg", "name": "medium_GAV09387.jpg", "path": null, "size": 89.37, "width": 500, "height": 750, "sizeInBytes": 89365}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_GAV_09387_02064cfa42.jpg", "hash": "thumbnail_GAV_09387_02064cfa42", "mime": "image/jpeg", "name": "thumbnail_GAV09387.jpg", "path": null, "size": 7.18, "width": 104, "height": 156, "sizeInBytes": 7177}}	GAV_09387_02064cfa42	.jpg	image/jpeg	2505.11	/uploads/GAV_09387_02064cfa42.jpg	\N	local	\N	/1	2025-05-14 16:28:17.097	2025-05-14 16:28:17.097	2025-05-14 16:28:17.097	1	1	\N
20	nfkac1nwfkhvrsc6yn3he2lo	PB030267.JPG	\N	\N	2500	1875	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030267_97936bb65e.JPG", "hash": "large_PB_030267_97936bb65e", "mime": "image/jpeg", "name": "large_PB030267.JPG", "path": null, "size": 179.6, "width": 1000, "height": 750, "sizeInBytes": 179599}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030267_97936bb65e.JPG", "hash": "small_PB_030267_97936bb65e", "mime": "image/jpeg", "name": "small_PB030267.JPG", "path": null, "size": 55.28, "width": 500, "height": 374, "sizeInBytes": 55281}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030267_97936bb65e.JPG", "hash": "medium_PB_030267_97936bb65e", "mime": "image/jpeg", "name": "medium_PB030267.JPG", "path": null, "size": 110.81, "width": 750, "height": 562, "sizeInBytes": 110814}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030267_97936bb65e.JPG", "hash": "thumbnail_PB_030267_97936bb65e", "mime": "image/jpeg", "name": "thumbnail_PB030267.JPG", "path": null, "size": 12.47, "width": 208, "height": 156, "sizeInBytes": 12471}}	PB_030267_97936bb65e	.JPG	image/jpeg	805.39	/uploads/PB_030267_97936bb65e.JPG	\N	local	\N	/2	2025-05-14 16:39:34.375	2025-05-14 16:39:34.375	2025-05-14 16:39:34.375	1	1	\N
21	b53oak29gcsc6wz002glgqnz	PB030116.JPG	\N	\N	1875	2500	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030116_e9b1d02a5c.JPG", "hash": "large_PB_030116_e9b1d02a5c", "mime": "image/jpeg", "name": "large_PB030116.JPG", "path": null, "size": 174.27, "width": 750, "height": 1000, "sizeInBytes": 174269}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030116_e9b1d02a5c.JPG", "hash": "small_PB_030116_e9b1d02a5c", "mime": "image/jpeg", "name": "small_PB030116.JPG", "path": null, "size": 54.93, "width": 374, "height": 500, "sizeInBytes": 54932}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030116_e9b1d02a5c.JPG", "hash": "medium_PB_030116_e9b1d02a5c", "mime": "image/jpeg", "name": "medium_PB030116.JPG", "path": null, "size": 108.56, "width": 562, "height": 750, "sizeInBytes": 108558}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030116_e9b1d02a5c.JPG", "hash": "thumbnail_PB_030116_e9b1d02a5c", "mime": "image/jpeg", "name": "thumbnail_PB030116.JPG", "path": null, "size": 7.86, "width": 117, "height": 156, "sizeInBytes": 7861}}	PB_030116_e9b1d02a5c	.JPG	image/jpeg	807.03	/uploads/PB_030116_e9b1d02a5c.JPG	\N	local	\N	/2	2025-05-14 16:39:34.679	2025-05-14 16:39:34.679	2025-05-14 16:39:34.679	1	1	\N
22	h5ac4ll2nzn43iv3ooexijmx	PB030407.JPG	\N	\N	1875	2500	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030407_1f6a258749.JPG", "hash": "large_PB_030407_1f6a258749", "mime": "image/jpeg", "name": "large_PB030407.JPG", "path": null, "size": 88.17, "width": 750, "height": 1000, "sizeInBytes": 88172}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030407_1f6a258749.JPG", "hash": "small_PB_030407_1f6a258749", "mime": "image/jpeg", "name": "small_PB030407.JPG", "path": null, "size": 30.63, "width": 374, "height": 500, "sizeInBytes": 30631}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030407_1f6a258749.JPG", "hash": "medium_PB_030407_1f6a258749", "mime": "image/jpeg", "name": "medium_PB030407.JPG", "path": null, "size": 56.74, "width": 562, "height": 750, "sizeInBytes": 56744}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030407_1f6a258749.JPG", "hash": "thumbnail_PB_030407_1f6a258749", "mime": "image/jpeg", "name": "thumbnail_PB030407.JPG", "path": null, "size": 5.57, "width": 117, "height": 156, "sizeInBytes": 5574}}	PB_030407_1f6a258749	.JPG	image/jpeg	434.13	/uploads/PB_030407_1f6a258749.JPG	\N	local	\N	/2	2025-05-14 16:39:34.748	2025-05-14 16:39:34.748	2025-05-14 16:39:34.748	1	1	\N
24	f1alnvctimpw17jpv0e0p5li	PB030228.JPG	\N	\N	1875	2500	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030228_190349d93c.JPG", "hash": "large_PB_030228_190349d93c", "mime": "image/jpeg", "name": "large_PB030228.JPG", "path": null, "size": 120.83, "width": 750, "height": 1000, "sizeInBytes": 120832}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030228_190349d93c.JPG", "hash": "small_PB_030228_190349d93c", "mime": "image/jpeg", "name": "small_PB030228.JPG", "path": null, "size": 41.83, "width": 374, "height": 500, "sizeInBytes": 41829}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030228_190349d93c.JPG", "hash": "medium_PB_030228_190349d93c", "mime": "image/jpeg", "name": "medium_PB030228.JPG", "path": null, "size": 78.3, "width": 562, "height": 750, "sizeInBytes": 78298}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030228_190349d93c.JPG", "hash": "thumbnail_PB_030228_190349d93c", "mime": "image/jpeg", "name": "thumbnail_PB030228.JPG", "path": null, "size": 7.07, "width": 117, "height": 156, "sizeInBytes": 7068}}	PB_030228_190349d93c	.JPG	image/jpeg	531.93	/uploads/PB_030228_190349d93c.JPG	\N	local	\N	/2	2025-05-14 16:39:34.891	2025-05-14 16:39:34.891	2025-05-14 16:39:34.891	1	1	\N
25	jcat07vay8bjfgsbiwq3mmv7	PB030460.JPG	\N	\N	1875	2500	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030460_6b18cbbd4f.JPG", "hash": "large_PB_030460_6b18cbbd4f", "mime": "image/jpeg", "name": "large_PB030460.JPG", "path": null, "size": 121.4, "width": 750, "height": 1000, "sizeInBytes": 121397}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030460_6b18cbbd4f.JPG", "hash": "small_PB_030460_6b18cbbd4f", "mime": "image/jpeg", "name": "small_PB030460.JPG", "path": null, "size": 41.41, "width": 374, "height": 500, "sizeInBytes": 41413}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030460_6b18cbbd4f.JPG", "hash": "medium_PB_030460_6b18cbbd4f", "mime": "image/jpeg", "name": "medium_PB030460.JPG", "path": null, "size": 77.94, "width": 562, "height": 750, "sizeInBytes": 77939}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030460_6b18cbbd4f.JPG", "hash": "thumbnail_PB_030460_6b18cbbd4f", "mime": "image/jpeg", "name": "thumbnail_PB030460.JPG", "path": null, "size": 6.9, "width": 117, "height": 156, "sizeInBytes": 6898}}	PB_030460_6b18cbbd4f	.JPG	image/jpeg	544.04	/uploads/PB_030460_6b18cbbd4f.JPG	\N	local	\N	/2	2025-05-14 16:39:34.978	2025-05-14 16:39:34.978	2025-05-14 16:39:34.978	1	1	\N
26	y228k2tl5ok96jn1bbqcwal4	PB030470.JPG	\N	\N	2500	1875	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030470_f2bf68dd1f.JPG", "hash": "large_PB_030470_f2bf68dd1f", "mime": "image/jpeg", "name": "large_PB030470.JPG", "path": null, "size": 146.41, "width": 1000, "height": 750, "sizeInBytes": 146413}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030470_f2bf68dd1f.JPG", "hash": "small_PB_030470_f2bf68dd1f", "mime": "image/jpeg", "name": "small_PB030470.JPG", "path": null, "size": 49.74, "width": 500, "height": 374, "sizeInBytes": 49741}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030470_f2bf68dd1f.JPG", "hash": "medium_PB_030470_f2bf68dd1f", "mime": "image/jpeg", "name": "medium_PB030470.JPG", "path": null, "size": 94.52, "width": 750, "height": 562, "sizeInBytes": 94515}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030470_f2bf68dd1f.JPG", "hash": "thumbnail_PB_030470_f2bf68dd1f", "mime": "image/jpeg", "name": "thumbnail_PB030470.JPG", "path": null, "size": 12.31, "width": 208, "height": 156, "sizeInBytes": 12308}}	PB_030470_f2bf68dd1f	.JPG	image/jpeg	641.14	/uploads/PB_030470_f2bf68dd1f.JPG	\N	local	\N	/2	2025-05-14 16:39:36.771	2025-05-14 16:39:36.771	2025-05-14 16:39:36.771	1	1	\N
27	tdma60bxg2ylt89iu22143py	PB030514.JPG	\N	\N	2500	1875	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030514_760bd358f0.JPG", "hash": "large_PB_030514_760bd358f0", "mime": "image/jpeg", "name": "large_PB030514.JPG", "path": null, "size": 164.23, "width": 1000, "height": 750, "sizeInBytes": 164232}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030514_760bd358f0.JPG", "hash": "small_PB_030514_760bd358f0", "mime": "image/jpeg", "name": "small_PB030514.JPG", "path": null, "size": 49.03, "width": 500, "height": 374, "sizeInBytes": 49028}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030514_760bd358f0.JPG", "hash": "medium_PB_030514_760bd358f0", "mime": "image/jpeg", "name": "medium_PB030514.JPG", "path": null, "size": 99.94, "width": 750, "height": 562, "sizeInBytes": 99943}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030514_760bd358f0.JPG", "hash": "thumbnail_PB_030514_760bd358f0", "mime": "image/jpeg", "name": "thumbnail_PB030514.JPG", "path": null, "size": 10.37, "width": 208, "height": 156, "sizeInBytes": 10374}}	PB_030514_760bd358f0	.JPG	image/jpeg	757.16	/uploads/PB_030514_760bd358f0.JPG	\N	local	\N	/2	2025-05-14 16:39:36.874	2025-05-14 16:39:36.874	2025-05-14 16:39:36.875	1	1	\N
28	pwkom30olf8p3c8xjc2j995g	PB030635.JPG	\N	\N	2500	1875	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030635_3a9ad4b5c4.JPG", "hash": "large_PB_030635_3a9ad4b5c4", "mime": "image/jpeg", "name": "large_PB030635.JPG", "path": null, "size": 134.98, "width": 1000, "height": 750, "sizeInBytes": 134976}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030635_3a9ad4b5c4.JPG", "hash": "small_PB_030635_3a9ad4b5c4", "mime": "image/jpeg", "name": "small_PB030635.JPG", "path": null, "size": 45.01, "width": 500, "height": 374, "sizeInBytes": 45007}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030635_3a9ad4b5c4.JPG", "hash": "medium_PB_030635_3a9ad4b5c4", "mime": "image/jpeg", "name": "medium_PB030635.JPG", "path": null, "size": 86.23, "width": 750, "height": 562, "sizeInBytes": 86232}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030635_3a9ad4b5c4.JPG", "hash": "thumbnail_PB_030635_3a9ad4b5c4", "mime": "image/jpeg", "name": "thumbnail_PB030635.JPG", "path": null, "size": 11.13, "width": 208, "height": 156, "sizeInBytes": 11126}}	PB_030635_3a9ad4b5c4	.JPG	image/jpeg	599.40	/uploads/PB_030635_3a9ad4b5c4.JPG	\N	local	\N	/2	2025-05-14 16:39:37.41	2025-05-14 16:39:37.41	2025-05-14 16:39:37.41	1	1	\N
29	zuus9gmayqwbjfxil0zs41tc	PB030631.JPG	\N	\N	2500	1875	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030631_6f72f72c21.JPG", "hash": "large_PB_030631_6f72f72c21", "mime": "image/jpeg", "name": "large_PB030631.JPG", "path": null, "size": 183.08, "width": 1000, "height": 750, "sizeInBytes": 183082}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030631_6f72f72c21.JPG", "hash": "small_PB_030631_6f72f72c21", "mime": "image/jpeg", "name": "small_PB030631.JPG", "path": null, "size": 56.6, "width": 500, "height": 374, "sizeInBytes": 56600}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030631_6f72f72c21.JPG", "hash": "medium_PB_030631_6f72f72c21", "mime": "image/jpeg", "name": "medium_PB030631.JPG", "path": null, "size": 112.76, "width": 750, "height": 562, "sizeInBytes": 112762}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030631_6f72f72c21.JPG", "hash": "thumbnail_PB_030631_6f72f72c21", "mime": "image/jpeg", "name": "thumbnail_PB030631.JPG", "path": null, "size": 12.6, "width": 208, "height": 156, "sizeInBytes": 12600}}	PB_030631_6f72f72c21	.JPG	image/jpeg	814.79	/uploads/PB_030631_6f72f72c21.JPG	\N	local	\N	/2	2025-05-14 16:39:37.623	2025-05-14 16:39:37.623	2025-05-14 16:39:37.623	1	1	\N
30	cddpjsy0bmghyifczyxld298	PB030551.JPG	\N	\N	1875	2500	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030551_bfe4ecb19c.JPG", "hash": "large_PB_030551_bfe4ecb19c", "mime": "image/jpeg", "name": "large_PB030551.JPG", "path": null, "size": 140.87, "width": 750, "height": 1000, "sizeInBytes": 140874}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030551_bfe4ecb19c.JPG", "hash": "small_PB_030551_bfe4ecb19c", "mime": "image/jpeg", "name": "small_PB030551.JPG", "path": null, "size": 46.58, "width": 374, "height": 500, "sizeInBytes": 46579}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030551_bfe4ecb19c.JPG", "hash": "medium_PB_030551_bfe4ecb19c", "mime": "image/jpeg", "name": "medium_PB030551.JPG", "path": null, "size": 89.21, "width": 562, "height": 750, "sizeInBytes": 89213}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030551_bfe4ecb19c.JPG", "hash": "thumbnail_PB_030551_bfe4ecb19c", "mime": "image/jpeg", "name": "thumbnail_PB030551.JPG", "path": null, "size": 7.2, "width": 117, "height": 156, "sizeInBytes": 7196}}	PB_030551_bfe4ecb19c	.JPG	image/jpeg	633.80	/uploads/PB_030551_bfe4ecb19c.JPG	\N	local	\N	/2	2025-05-14 16:39:38.157	2025-05-14 16:39:38.157	2025-05-14 16:39:38.158	1	1	\N
31	r3bfgee7apqjm3lhs6jvlynv	PB030490.JPG	\N	\N	1875	2500	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030490_9c3601b12d.JPG", "hash": "large_PB_030490_9c3601b12d", "mime": "image/jpeg", "name": "large_PB030490.JPG", "path": null, "size": 104.15, "width": 750, "height": 1000, "sizeInBytes": 104152}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030490_9c3601b12d.JPG", "hash": "small_PB_030490_9c3601b12d", "mime": "image/jpeg", "name": "small_PB030490.JPG", "path": null, "size": 36.13, "width": 374, "height": 500, "sizeInBytes": 36125}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030490_9c3601b12d.JPG", "hash": "medium_PB_030490_9c3601b12d", "mime": "image/jpeg", "name": "medium_PB030490.JPG", "path": null, "size": 67.33, "width": 562, "height": 750, "sizeInBytes": 67335}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030490_9c3601b12d.JPG", "hash": "thumbnail_PB_030490_9c3601b12d", "mime": "image/jpeg", "name": "thumbnail_PB030490.JPG", "path": null, "size": 6.18, "width": 117, "height": 156, "sizeInBytes": 6182}}	PB_030490_9c3601b12d	.JPG	image/jpeg	472.40	/uploads/PB_030490_9c3601b12d.JPG	\N	local	\N	/2	2025-05-14 16:39:38.398	2025-05-14 16:39:38.398	2025-05-14 16:39:38.398	1	1	\N
32	gtirqx24zbnpchbg1pevp5n3	PB030685.JPG	\N	\N	1875	2500	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030685_15ef315630.JPG", "hash": "large_PB_030685_15ef315630", "mime": "image/jpeg", "name": "large_PB030685.JPG", "path": null, "size": 116.47, "width": 750, "height": 1000, "sizeInBytes": 116469}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030685_15ef315630.JPG", "hash": "small_PB_030685_15ef315630", "mime": "image/jpeg", "name": "small_PB030685.JPG", "path": null, "size": 39.24, "width": 374, "height": 500, "sizeInBytes": 39243}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030685_15ef315630.JPG", "hash": "medium_PB_030685_15ef315630", "mime": "image/jpeg", "name": "medium_PB030685.JPG", "path": null, "size": 74.19, "width": 562, "height": 750, "sizeInBytes": 74191}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030685_15ef315630.JPG", "hash": "thumbnail_PB_030685_15ef315630", "mime": "image/jpeg", "name": "thumbnail_PB030685.JPG", "path": null, "size": 6.59, "width": 117, "height": 156, "sizeInBytes": 6592}}	PB_030685_15ef315630	.JPG	image/jpeg	527.74	/uploads/PB_030685_15ef315630.JPG	\N	local	\N	/2	2025-05-14 16:39:38.892	2025-05-14 16:39:38.892	2025-05-14 16:39:38.892	1	1	\N
23	rsid2ybs25q511nzmk13utvk	PB030044.JPG	\N	\N	1875	2500	{"large": {"ext": ".JPG", "url": "/uploads/large_PB_030044_049e282ea1.JPG", "hash": "large_PB_030044_049e282ea1", "mime": "image/jpeg", "name": "large_PB030044.JPG", "path": null, "size": 171.66, "width": 750, "height": 1000, "sizeInBytes": 171657}, "small": {"ext": ".JPG", "url": "/uploads/small_PB_030044_049e282ea1.JPG", "hash": "small_PB_030044_049e282ea1", "mime": "image/jpeg", "name": "small_PB030044.JPG", "path": null, "size": 55.75, "width": 374, "height": 500, "sizeInBytes": 55747}, "medium": {"ext": ".JPG", "url": "/uploads/medium_PB_030044_049e282ea1.JPG", "hash": "medium_PB_030044_049e282ea1", "mime": "image/jpeg", "name": "medium_PB030044.JPG", "path": null, "size": 108.33, "width": 562, "height": 750, "sizeInBytes": 108332}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_PB_030044_049e282ea1.JPG", "hash": "thumbnail_PB_030044_049e282ea1", "mime": "image/jpeg", "name": "thumbnail_PB030044.JPG", "path": null, "size": 7.89, "width": 117, "height": 156, "sizeInBytes": 7892}}	PB_030044_049e282ea1	.JPG	image/jpeg	757.10	/uploads/PB_030044_049e282ea1.JPG	\N	local	\N	/2	2025-05-14 16:39:34.836	2025-05-14 16:39:49.223	2025-05-14 16:39:34.837	1	1	\N
4	x0u9urh6pdv9xrq75kwj8y27	BBF46AAF-D1B5-4B7E-8027-D873AAD8C3F7.png	\N	\N	960	1222	{"large": {"ext": ".png", "url": "/uploads/large_BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26.png", "hash": "large_BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26", "mime": "image/png", "name": "large_BBF46AAF-D1B5-4B7E-8027-D873AAD8C3F7.png", "path": null, "size": 1190.67, "width": 786, "height": 1000, "sizeInBytes": 1190668}, "small": {"ext": ".png", "url": "/uploads/small_BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26.png", "hash": "small_BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26", "mime": "image/png", "name": "small_BBF46AAF-D1B5-4B7E-8027-D873AAD8C3F7.png", "path": null, "size": 335.25, "width": 393, "height": 500, "sizeInBytes": 335251}, "medium": {"ext": ".png", "url": "/uploads/medium_BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26.png", "hash": "medium_BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26", "mime": "image/png", "name": "medium_BBF46AAF-D1B5-4B7E-8027-D873AAD8C3F7.png", "path": null, "size": 703.18, "width": 589, "height": 750, "sizeInBytes": 703183}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26.png", "hash": "thumbnail_BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26", "mime": "image/png", "name": "thumbnail_BBF46AAF-D1B5-4B7E-8027-D873AAD8C3F7.png", "path": null, "size": 42.98, "width": 123, "height": 156, "sizeInBytes": 42978}}	BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26	.png	image/png	369.65	/uploads/BBF_46_AAF_D1_B5_4_B7_E_8027_D873_AAD_8_C3_F7_6df0a69a26.png	\N	local	\N	/	2025-05-14 16:21:43.158	2025-05-14 17:23:48.932	2025-05-14 16:21:43.158	1	1	\N
33	dtc0a3oc9tyicwyl8j7ijag8	IMG_0302.PNG	\N	\N	2048	2732	{"large": {"ext": ".PNG", "url": "/uploads/large_IMG_0302_ea692817d7.PNG", "hash": "large_IMG_0302_ea692817d7", "mime": "image/png", "name": "large_IMG_0302.PNG", "path": null, "size": 930.01, "width": 750, "height": 1000, "sizeInBytes": 930012}, "small": {"ext": ".PNG", "url": "/uploads/small_IMG_0302_ea692817d7.PNG", "hash": "small_IMG_0302_ea692817d7", "mime": "image/png", "name": "small_IMG_0302.PNG", "path": null, "size": 249.37, "width": 375, "height": 500, "sizeInBytes": 249367}, "medium": {"ext": ".PNG", "url": "/uploads/medium_IMG_0302_ea692817d7.PNG", "hash": "medium_IMG_0302_ea692817d7", "mime": "image/png", "name": "medium_IMG_0302.PNG", "path": null, "size": 533.32, "width": 562, "height": 750, "sizeInBytes": 533315}, "thumbnail": {"ext": ".PNG", "url": "/uploads/thumbnail_IMG_0302_ea692817d7.PNG", "hash": "thumbnail_IMG_0302_ea692817d7", "mime": "image/png", "name": "thumbnail_IMG_0302.PNG", "path": null, "size": 31.1, "width": 117, "height": 156, "sizeInBytes": 31095}}	IMG_0302_ea692817d7	.PNG	image/png	1233.17	/uploads/IMG_0302_ea692817d7.PNG	\N	local	\N	/2	2025-05-14 20:48:49.763	2025-05-14 20:48:49.763	2025-05-14 20:48:49.763	1	1	\N
3	ayuddzf43am74l7unfjczqm3	7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg	\N	\N	2500	1597	{"large": {"ext": ".jpeg", "url": "/uploads/large_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e.jpeg", "hash": "large_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e", "mime": "image/jpeg", "name": "large_7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg", "path": null, "size": 96.63, "width": 1000, "height": 639, "sizeInBytes": 96628}, "small": {"ext": ".jpeg", "url": "/uploads/small_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e.jpeg", "hash": "small_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e", "mime": "image/jpeg", "name": "small_7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg", "path": null, "size": 34.61, "width": 500, "height": 319, "sizeInBytes": 34608}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e.jpeg", "hash": "medium_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e", "mime": "image/jpeg", "name": "medium_7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg", "path": null, "size": 62.34, "width": 750, "height": 479, "sizeInBytes": 62340}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e.jpeg", "hash": "thumbnail_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e", "mime": "image/jpeg", "name": "thumbnail_7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg", "path": null, "size": 11.84, "width": 245, "height": 156, "sizeInBytes": 11838}}	7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e	.jpeg	image/jpeg	463.22	/uploads/7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_d206acf43e.jpeg	\N	local	\N	/	2025-05-14 15:59:39.329	2025-05-15 18:11:53.492	2025-05-14 15:59:39.33	1	1	\N
34	qiigoestuptqd10ddfgh1mqf	02FF1AC6-2402-4394-BB62-D1505D221FE5.jpeg	\N	\N	2500	1450	{"large": {"ext": ".jpeg", "url": "/uploads/large_02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1.jpeg", "hash": "large_02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1", "mime": "image/jpeg", "name": "large_02FF1AC6-2402-4394-BB62-D1505D221FE5.jpeg", "path": null, "size": 67.19, "width": 1000, "height": 580, "sizeInBytes": 67188}, "small": {"ext": ".jpeg", "url": "/uploads/small_02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1.jpeg", "hash": "small_02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1", "mime": "image/jpeg", "name": "small_02FF1AC6-2402-4394-BB62-D1505D221FE5.jpeg", "path": null, "size": 20.57, "width": 500, "height": 290, "sizeInBytes": 20565}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1.jpeg", "hash": "medium_02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1", "mime": "image/jpeg", "name": "medium_02FF1AC6-2402-4394-BB62-D1505D221FE5.jpeg", "path": null, "size": 40.73, "width": 750, "height": 435, "sizeInBytes": 40725}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1.jpeg", "hash": "thumbnail_02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1", "mime": "image/jpeg", "name": "thumbnail_02FF1AC6-2402-4394-BB62-D1505D221FE5.jpeg", "path": null, "size": 6.38, "width": 245, "height": 142, "sizeInBytes": 6379}}	02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1	.jpeg	image/jpeg	322.58	/uploads/02_FF_1_AC_6_2402_4394_BB_62_D1505_D221_FE_5_d4808d1af1.jpeg	\N	local	\N	/	2025-05-15 20:05:17.868	2025-05-15 20:05:17.868	2025-05-15 20:05:17.869	1	1	\N
35	f7rz6eec7e67adqrp9qh0k5l	F5F6062E-B6C5-4092-BBD2-8F4DADB45398.jpeg	\N	\N	1875	1252	{"large": {"ext": ".jpeg", "url": "/uploads/large_F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d.jpeg", "hash": "large_F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d", "mime": "image/jpeg", "name": "large_F5F6062E-B6C5-4092-BBD2-8F4DADB45398.jpeg", "path": null, "size": 131.79, "width": 1000, "height": 668, "sizeInBytes": 131786}, "small": {"ext": ".jpeg", "url": "/uploads/small_F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d.jpeg", "hash": "small_F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d", "mime": "image/jpeg", "name": "small_F5F6062E-B6C5-4092-BBD2-8F4DADB45398.jpeg", "path": null, "size": 43.3, "width": 500, "height": 334, "sizeInBytes": 43303}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d.jpeg", "hash": "medium_F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d", "mime": "image/jpeg", "name": "medium_F5F6062E-B6C5-4092-BBD2-8F4DADB45398.jpeg", "path": null, "size": 84.07, "width": 750, "height": 501, "sizeInBytes": 84068}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d.jpeg", "hash": "thumbnail_F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d", "mime": "image/jpeg", "name": "thumbnail_F5F6062E-B6C5-4092-BBD2-8F4DADB45398.jpeg", "path": null, "size": 12.01, "width": 233, "height": 156, "sizeInBytes": 12011}}	F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d	.jpeg	image/jpeg	359.93	/uploads/F5_F6062_E_B6_C5_4092_BBD_2_8_F4_DADB_45398_d59ffca56d.jpeg	\N	local	\N	/	2025-05-15 20:05:18.246	2025-05-15 20:05:18.246	2025-05-15 20:05:18.246	1	1	\N
36	myz22v8e48kejffn58jpc1ng	B7B9ACEF-5860-437F-BE32-330BF22ABB75.jpeg	\N	\N	1639	1443	{"large": {"ext": ".jpeg", "url": "/uploads/large_B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b.jpeg", "hash": "large_B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b", "mime": "image/jpeg", "name": "large_B7B9ACEF-5860-437F-BE32-330BF22ABB75.jpeg", "path": null, "size": 102.4, "width": 1000, "height": 880, "sizeInBytes": 102402}, "small": {"ext": ".jpeg", "url": "/uploads/small_B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b.jpeg", "hash": "small_B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b", "mime": "image/jpeg", "name": "small_B7B9ACEF-5860-437F-BE32-330BF22ABB75.jpeg", "path": null, "size": 32.4, "width": 500, "height": 440, "sizeInBytes": 32401}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b.jpeg", "hash": "medium_B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b", "mime": "image/jpeg", "name": "medium_B7B9ACEF-5860-437F-BE32-330BF22ABB75.jpeg", "path": null, "size": 63.65, "width": 750, "height": 660, "sizeInBytes": 63654}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b.jpeg", "hash": "thumbnail_B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b", "mime": "image/jpeg", "name": "thumbnail_B7B9ACEF-5860-437F-BE32-330BF22ABB75.jpeg", "path": null, "size": 6, "width": 177, "height": 156, "sizeInBytes": 5998}}	B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b	.jpeg	image/jpeg	259.19	/uploads/B7_B9_ACEF_5860_437_F_BE_32_330_BF_22_ABB_75_71c889934b.jpeg	\N	local	\N	/	2025-05-15 20:05:18.542	2025-05-15 20:05:18.542	2025-05-15 20:05:18.542	1	1	\N
39	zbg0i2u90xhdsn2323bd8t0u	Меню_Классическое.pdf	\N	\N	\N	\N	\N	Menyu_Klassicheskoe_ab4dc4d504	.pdf	application/pdf	189.21	/uploads/Menyu_Klassicheskoe_ab4dc4d504.pdf	\N	local	\N	/	2025-05-15 20:05:43.15	2025-05-15 20:05:43.15	2025-05-15 20:05:43.15	1	1	\N
40	qcaw1m1k3l4n6gprckzxljwi	Меню_Сезонное-2.pdf	\N	\N	\N	\N	\N	Menyu_Sezonnoe_2_4ae61cff13	.pdf	application/pdf	198.44	/uploads/Menyu_Sezonnoe_2_4ae61cff13.pdf	\N	local	\N	/	2025-05-15 20:05:43.208	2025-05-15 20:05:43.208	2025-05-15 20:05:43.209	1	1	\N
37	mey47duoy4mclauxx6bj62dx	7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg	\N	\N	2500	1597	{"large": {"ext": ".jpeg", "url": "/uploads/large_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816.jpeg", "hash": "large_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816", "mime": "image/jpeg", "name": "large_7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg", "path": null, "size": 96.63, "width": 1000, "height": 639, "sizeInBytes": 96628}, "small": {"ext": ".jpeg", "url": "/uploads/small_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816.jpeg", "hash": "small_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816", "mime": "image/jpeg", "name": "small_7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg", "path": null, "size": 34.61, "width": 500, "height": 319, "sizeInBytes": 34608}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816.jpeg", "hash": "medium_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816", "mime": "image/jpeg", "name": "medium_7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg", "path": null, "size": 62.34, "width": 750, "height": 479, "sizeInBytes": 62340}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816.jpeg", "hash": "thumbnail_7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816", "mime": "image/jpeg", "name": "thumbnail_7CF4E8D1-30D1-4651-B022-F6662B9595AB.jpeg", "path": null, "size": 11.84, "width": 245, "height": 156, "sizeInBytes": 11838}}	7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816	.jpeg	image/jpeg	463.22	/uploads/7_CF_4_E8_D1_30_D1_4651_B022_F6662_B9595_AB_8abd33f816.jpeg	\N	local	\N	/	2025-05-15 20:05:18.628	2025-05-15 20:05:18.628	2025-05-15 20:05:18.632	1	1	\N
38	yka9qyaomssn1z042nkwprzz	31018EDB-000D-45A4-9F65-D8630A3CFC0A.jpeg	\N	\N	2500	1875	{"large": {"ext": ".jpeg", "url": "/uploads/large_31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a.jpeg", "hash": "large_31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a", "mime": "image/jpeg", "name": "large_31018EDB-000D-45A4-9F65-D8630A3CFC0A.jpeg", "path": null, "size": 99.36, "width": 1000, "height": 750, "sizeInBytes": 99357}, "small": {"ext": ".jpeg", "url": "/uploads/small_31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a.jpeg", "hash": "small_31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a", "mime": "image/jpeg", "name": "small_31018EDB-000D-45A4-9F65-D8630A3CFC0A.jpeg", "path": null, "size": 32.14, "width": 500, "height": 374, "sizeInBytes": 32136}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a.jpeg", "hash": "medium_31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a", "mime": "image/jpeg", "name": "medium_31018EDB-000D-45A4-9F65-D8630A3CFC0A.jpeg", "path": null, "size": 62.54, "width": 750, "height": 562, "sizeInBytes": 62537}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a.jpeg", "hash": "thumbnail_31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a", "mime": "image/jpeg", "name": "thumbnail_31018EDB-000D-45A4-9F65-D8630A3CFC0A.jpeg", "path": null, "size": 8.03, "width": 208, "height": 156, "sizeInBytes": 8031}}	31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a	.jpeg	image/jpeg	471.99	/uploads/31018_EDB_000_D_45_A4_9_F65_D8630_A3_CFC_0_A_b93b7dc51a.jpeg	\N	local	\N	/	2025-05-15 20:05:18.74	2025-05-15 20:05:18.74	2025-05-15 20:05:18.741	1	1	\N
41	i9job7f2y3bqeoe3559pz2qn	Group 1.png	\N	\N	1920	100	{"large": {"ext": ".png", "url": "/uploads/large_Group_1_7a40246c87.png", "hash": "large_Group_1_7a40246c87", "mime": "image/png", "name": "large_Group 1.png", "path": null, "size": 21.16, "width": 1000, "height": 52, "sizeInBytes": 21161}, "small": {"ext": ".png", "url": "/uploads/small_Group_1_7a40246c87.png", "hash": "small_Group_1_7a40246c87", "mime": "image/png", "name": "small_Group 1.png", "path": null, "size": 6.74, "width": 500, "height": 26, "sizeInBytes": 6740}, "medium": {"ext": ".png", "url": "/uploads/medium_Group_1_7a40246c87.png", "hash": "medium_Group_1_7a40246c87", "mime": "image/png", "name": "medium_Group 1.png", "path": null, "size": 13.07, "width": 750, "height": 39, "sizeInBytes": 13072}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Group_1_7a40246c87.png", "hash": "thumbnail_Group_1_7a40246c87", "mime": "image/png", "name": "thumbnail_Group 1.png", "path": null, "size": 2.35, "width": 245, "height": 13, "sizeInBytes": 2353}}	Group_1_7a40246c87	.png	image/png	15.12	/uploads/Group_1_7a40246c87.png	\N	local	\N	/	2025-05-23 15:21:38.431	2025-05-23 15:21:38.431	2025-05-23 15:21:38.432	1	1	\N
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
1	5	1	1
2	6	1	2
3	7	1	3
4	8	1	4
5	9	1	5
6	10	1	6
7	11	1	7
8	12	1	8
9	13	1	9
10	14	1	10
11	15	1	11
12	16	1	12
13	17	1	13
14	18	1	14
15	19	1	15
16	20	2	1
17	21	2	2
18	22	2	3
19	23	2	4
20	24	2	5
21	25	2	6
22	26	2	7
23	27	2	8
24	28	2	9
25	29	2	10
26	30	2	11
27	31	2	12
28	32	2	13
30	33	2	14
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
155	4	1	api::kids-games-page.kids-games-page	CoverImage	1
156	29	1	api::kids-games-page.kids-games-page	Gallery	1
157	28	1	api::kids-games-page.kids-games-page	Gallery	2
158	26	1	api::kids-games-page.kids-games-page	Gallery	3
159	4	3	api::kids-games-page.kids-games-page	CoverImage	1
160	29	3	api::kids-games-page.kids-games-page	Gallery	1
161	28	3	api::kids-games-page.kids-games-page	Gallery	2
162	26	3	api::kids-games-page.kids-games-page	Gallery	3
333	3	1	api::event.event	coverImage	1
334	28	1	api::event.event	gallery	1
335	27	1	api::event.event	gallery	2
336	26	1	api::event.event	gallery	3
23	6	1	api::theme-party-event.theme-party-event	coverImage	1
24	19	1	api::theme-party-event.theme-party-event	media	1
25	18	1	api::theme-party-event.theme-party-event	media	2
26	17	1	api::theme-party-event.theme-party-event	media	3
27	16	1	api::theme-party-event.theme-party-event	media	4
28	15	1	api::theme-party-event.theme-party-event	media	5
29	14	1	api::theme-party-event.theme-party-event	media	6
30	13	1	api::theme-party-event.theme-party-event	media	7
31	12	1	api::theme-party-event.theme-party-event	media	8
32	11	1	api::theme-party-event.theme-party-event	media	9
33	10	1	api::theme-party-event.theme-party-event	media	10
34	6	2	api::theme-party-event.theme-party-event	coverImage	1
35	19	2	api::theme-party-event.theme-party-event	media	1
36	18	2	api::theme-party-event.theme-party-event	media	2
37	17	2	api::theme-party-event.theme-party-event	media	3
38	16	2	api::theme-party-event.theme-party-event	media	4
39	15	2	api::theme-party-event.theme-party-event	media	5
40	14	2	api::theme-party-event.theme-party-event	media	6
41	13	2	api::theme-party-event.theme-party-event	media	7
42	12	2	api::theme-party-event.theme-party-event	media	8
43	11	2	api::theme-party-event.theme-party-event	media	9
44	10	2	api::theme-party-event.theme-party-event	media	10
45	23	3	api::theme-party-event.theme-party-event	coverImage	1
46	32	3	api::theme-party-event.theme-party-event	media	1
47	31	3	api::theme-party-event.theme-party-event	media	2
48	30	3	api::theme-party-event.theme-party-event	media	3
49	29	3	api::theme-party-event.theme-party-event	media	4
50	28	3	api::theme-party-event.theme-party-event	media	5
51	27	3	api::theme-party-event.theme-party-event	media	6
52	26	3	api::theme-party-event.theme-party-event	media	7
53	25	3	api::theme-party-event.theme-party-event	media	8
54	24	3	api::theme-party-event.theme-party-event	media	9
55	23	3	api::theme-party-event.theme-party-event	media	10
56	22	3	api::theme-party-event.theme-party-event	media	11
57	21	3	api::theme-party-event.theme-party-event	media	12
58	20	3	api::theme-party-event.theme-party-event	media	13
59	23	4	api::theme-party-event.theme-party-event	coverImage	1
60	32	4	api::theme-party-event.theme-party-event	media	1
61	31	4	api::theme-party-event.theme-party-event	media	2
62	30	4	api::theme-party-event.theme-party-event	media	3
63	29	4	api::theme-party-event.theme-party-event	media	4
64	28	4	api::theme-party-event.theme-party-event	media	5
65	27	4	api::theme-party-event.theme-party-event	media	6
66	26	4	api::theme-party-event.theme-party-event	media	7
67	25	4	api::theme-party-event.theme-party-event	media	8
68	24	4	api::theme-party-event.theme-party-event	media	9
69	23	4	api::theme-party-event.theme-party-event	media	10
70	22	4	api::theme-party-event.theme-party-event	media	11
71	21	4	api::theme-party-event.theme-party-event	media	12
72	20	4	api::theme-party-event.theme-party-event	media	13
91	4	1	api::open-parties-page.open-parties-page	coverImage	1
92	3	1	api::open-parties-page.open-parties-page	gallery	1
93	4	2	api::open-parties-page.open-parties-page	coverImage	1
94	3	2	api::open-parties-page.open-parties-page	gallery	1
337	3	4	api::event.event	coverImage	1
338	28	4	api::event.event	gallery	1
339	27	4	api::event.event	gallery	2
340	26	4	api::event.event	gallery	3
347	36	7	api::event.event	coverImage	1
348	36	8	api::event.event	coverImage	1
141	5	1	api::home-page.home-page	Gallery_Images	1
142	6	1	api::home-page.home-page	Gallery_Images	2
143	9	1	api::home-page.home-page	Gallery_Images	3
145	5	16	api::home-page.home-page	Gallery_Images	1
146	6	16	api::home-page.home-page	Gallery_Images	2
147	9	16	api::home-page.home-page	Gallery_Images	3
225	3	1	shared.dance-types	CoverImage	1
226	3	2	shared.dance-types	CoverImage	1
227	3	3	shared.dance-types	CoverImage	1
228	3	1	shared.trainers	mainImage	1
229	3	19	shared.dance-types	CoverImage	1
230	3	20	shared.dance-types	CoverImage	1
231	3	21	shared.dance-types	CoverImage	1
232	3	2	shared.trainers	mainImage	1
233	34	1	api::coffee-page.coffee-page	galleryImages	1
234	35	1	api::coffee-page.coffee-page	galleryImages	2
235	36	1	api::coffee-page.coffee-page	galleryImages	3
236	37	1	api::coffee-page.coffee-page	galleryImages	4
237	38	1	api::coffee-page.coffee-page	galleryImages	5
238	3	1	api::coffee-page.coffee-page	galleryImages	6
239	39	1	api::coffee-page.coffee-page	classicMenuFile	1
240	40	1	api::coffee-page.coffee-page	seasonalMenuFile	1
241	34	2	api::coffee-page.coffee-page	galleryImages	1
242	35	2	api::coffee-page.coffee-page	galleryImages	2
243	36	2	api::coffee-page.coffee-page	galleryImages	3
244	37	2	api::coffee-page.coffee-page	galleryImages	4
245	38	2	api::coffee-page.coffee-page	galleryImages	5
246	3	2	api::coffee-page.coffee-page	galleryImages	6
247	39	2	api::coffee-page.coffee-page	classicMenuFile	1
248	40	2	api::coffee-page.coffee-page	seasonalMenuFile	1
249	36	1	api::home-page.home-page	Gallery_Images1	1
250	35	1	api::home-page.home-page	Gallery_Images1	2
251	34	1	api::home-page.home-page	Gallery_Images1	3
252	33	1	api::home-page.home-page	Founder_Images	1
253	3	1	api::home-page.home-page	Gallery_Images2	1
254	38	1	api::home-page.home-page	Gallery_Images2	2
255	37	1	api::home-page.home-page	Gallery_Images2	3
256	36	17	api::home-page.home-page	Gallery_Images1	1
257	35	17	api::home-page.home-page	Gallery_Images1	2
258	34	17	api::home-page.home-page	Gallery_Images1	3
259	33	17	api::home-page.home-page	Founder_Images	1
260	3	17	api::home-page.home-page	Gallery_Images2	1
261	38	17	api::home-page.home-page	Gallery_Images2	2
262	37	17	api::home-page.home-page	Gallery_Images2	3
281	36	11	api::personal-parties-page.personal-parties-page	rentGallery	1
282	35	11	api::personal-parties-page.personal-parties-page	rentGallery	2
283	34	11	api::personal-parties-page.personal-parties-page	rentGallery	3
284	38	11	api::personal-parties-page.personal-parties-page	gameGallery	1
285	37	11	api::personal-parties-page.personal-parties-page	gameGallery	2
286	19	11	api::personal-parties-page.personal-parties-page	gameGallery	3
287	18	11	api::personal-parties-page.personal-parties-page	gameGallery	4
288	15	11	api::personal-parties-page.personal-parties-page	gameGallery	5
289	12	11	api::personal-parties-page.personal-parties-page	gameGallery	6
290	29	11	api::personal-parties-page.personal-parties-page	themeGallery	1
291	28	11	api::personal-parties-page.personal-parties-page	themeGallery	2
292	27	11	api::personal-parties-page.personal-parties-page	themeGallery	3
293	4	1	programs.program	mainImage	1
294	4	4	programs.program	mainImage	1
295	3	7	programs.program	mainImage	1
296	36	1	api::personal-parties-page.personal-parties-page	rentGallery	1
297	35	1	api::personal-parties-page.personal-parties-page	rentGallery	2
298	34	1	api::personal-parties-page.personal-parties-page	rentGallery	3
299	38	1	api::personal-parties-page.personal-parties-page	rentGallery	4
300	38	1	api::personal-parties-page.personal-parties-page	gameGallery	1
301	37	1	api::personal-parties-page.personal-parties-page	gameGallery	2
302	19	1	api::personal-parties-page.personal-parties-page	gameGallery	3
303	18	1	api::personal-parties-page.personal-parties-page	gameGallery	4
304	15	1	api::personal-parties-page.personal-parties-page	gameGallery	5
305	12	1	api::personal-parties-page.personal-parties-page	gameGallery	6
306	29	1	api::personal-parties-page.personal-parties-page	themeGallery	1
307	28	1	api::personal-parties-page.personal-parties-page	themeGallery	2
308	27	1	api::personal-parties-page.personal-parties-page	themeGallery	3
309	4	29	programs.program	mainImage	1
310	4	30	programs.program	mainImage	1
311	3	31	programs.program	mainImage	1
312	36	12	api::personal-parties-page.personal-parties-page	rentGallery	1
313	35	12	api::personal-parties-page.personal-parties-page	rentGallery	2
314	34	12	api::personal-parties-page.personal-parties-page	rentGallery	3
315	38	12	api::personal-parties-page.personal-parties-page	rentGallery	4
316	38	12	api::personal-parties-page.personal-parties-page	gameGallery	1
317	37	12	api::personal-parties-page.personal-parties-page	gameGallery	2
318	19	12	api::personal-parties-page.personal-parties-page	gameGallery	3
319	18	12	api::personal-parties-page.personal-parties-page	gameGallery	4
320	15	12	api::personal-parties-page.personal-parties-page	gameGallery	5
321	12	12	api::personal-parties-page.personal-parties-page	gameGallery	6
322	29	12	api::personal-parties-page.personal-parties-page	themeGallery	1
323	28	12	api::personal-parties-page.personal-parties-page	themeGallery	2
324	27	12	api::personal-parties-page.personal-parties-page	themeGallery	3
341	35	5	api::event.event	coverImage	1
342	35	5	api::event.event	gallery	1
343	35	6	api::event.event	coverImage	1
344	35	6	api::event.event	gallery	1
353	41	1	api::promo-banner.promo-banner	CoverImage	1
354	41	4	api::promo-banner.promo-banner	CoverImage	1
355	4	1	api::adult-games-page.adult-games-page	CoverImage	1
356	15	1	api::adult-games-page.adult-games-page	Gallery	1
357	14	1	api::adult-games-page.adult-games-page	Gallery	2
358	13	1	api::adult-games-page.adult-games-page	Gallery	3
359	12	1	api::adult-games-page.adult-games-page	Gallery	4
360	4	5	api::adult-games-page.adult-games-page	CoverImage	1
361	15	5	api::adult-games-page.adult-games-page	Gallery	1
362	14	5	api::adult-games-page.adult-games-page	Gallery	2
363	13	5	api::adult-games-page.adult-games-page	Gallery	3
364	12	5	api::adult-games-page.adult-games-page	Gallery	4
\.


--
-- Data for Name: footers; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.footers (id, document_id, number, email, adress, rutube_link, telegram_link, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, vk_link) FROM stdin;
1	fg0pl2mfiwrojz1ooxuqu9xa	+79956563053	По сотрудничеству обращаться: cherepnyayar@gmail.com	санкт-петербург, тудасюда д61	https://patreon.com/svtvnews	https://patreon.com/svtvnews	2025-05-14 14:29:03.636	2025-05-15 13:20:39.579	\N	1	1	\N	https://patreon.com/svtvnews
5	fg0pl2mfiwrojz1ooxuqu9xa	+79956563053	По сотрудничеству обращаться: cherepnyayar@gmail.com	санкт-петербург, тудасюда д61	https://patreon.com/svtvnews	https://patreon.com/svtvnews	2025-05-14 14:29:03.636	2025-05-15 13:20:39.579	2025-05-15 13:20:39.607	1	1	\N	https://patreon.com/svtvnews
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.games (id, document_id, title, game_type, audience_type, age_groups, description, has_premium_version, premium_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	r18w70llk1wfuaghg8s07qhe	БУНКЕР	role	kids	["8+", "10+", "13+", "16+"]	Время решить, кто окажется в\nспасительном бункере!	t	Забудьте, кем вы были «до»… Погрузитесь\nв атмосферу игры на выживание!	2025-05-14 16:43:15.022	2025-05-14 16:43:15.022	\N	1	1	\N
2	r18w70llk1wfuaghg8s07qhe	БУНКЕР	role	kids	["8+", "10+", "13+", "16+"]	Время решить, кто окажется в\nспасительном бункере!	t	Забудьте, кем вы были «до»… Погрузитесь\nв атмосферу игры на выживание!	2025-05-14 16:43:15.022	2025-05-14 16:43:15.022	2025-05-14 16:43:15.032	1	1	\N
3	f5odjd0jk7hzkkhgxn90aba9	МАФИЯ	role	kids	["8+", "10+", "13+", "16+"]	Классика бесценна! Снимите маски,\nгоспода, и будьте внимательней!	t	Невероятные сценарии игры в мафию с\nпогружением в жизнь мирных и мафиози!	2025-05-14 16:44:16.384	2025-05-14 16:44:16.384	\N	1	1	\N
4	f5odjd0jk7hzkkhgxn90aba9	МАФИЯ	role	kids	["8+", "10+", "13+", "16+"]	Классика бесценна! Снимите маски,\nгоспода, и будьте внимательней!	t	Невероятные сценарии игры в мафию с\nпогружением в жизнь мирных и мафиози!	2025-05-14 16:44:16.384	2025-05-14 16:44:16.384	2025-05-14 16:44:16.395	1	1	\N
5	gwh2s7t7r8ofqlm3xm7vwgsh	КОРОЛЕВСТВО КРИВЫХ ЗЕРКАЛ	role	adults	["16+"]	В кривом зеркале иллюзии искажаются…\nКто умеет зрить «корень» - тот победил!	f	\N	2025-05-14 16:45:03.595	2025-05-14 16:45:03.595	\N	1	1	\N
6	gwh2s7t7r8ofqlm3xm7vwgsh	КОРОЛЕВСТВО КРИВЫХ ЗЕРКАЛ	role	adults	["16+"]	В кривом зеркале иллюзии искажаются…\nКто умеет зрить «корень» - тот победил!	f	\N	2025-05-14 16:45:03.595	2025-05-14 16:45:03.595	2025-05-14 16:45:03.603	1	1	\N
7	pkgfkl2m5fokst3mzdqmtvzi	ЗАПИСКИ БЕЗУМЦА	role	adults	["16+"]	Вы слышали? Безумие безумием\nобезумело! Но есть истина и она - одна.	f	\N	2025-05-14 16:45:47.239	2025-05-14 16:45:47.239	\N	1	1	\N
8	pkgfkl2m5fokst3mzdqmtvzi	ЗАПИСКИ БЕЗУМЦА	role	adults	["16+"]	Вы слышали? Безумие безумием\nобезумело! Но есть истина и она - одна.	f	\N	2025-05-14 16:45:47.239	2025-05-14 16:45:47.239	2025-05-14 16:45:47.248	1	1	\N
9	ekuv3i8srl6kzeqo9xvikv0o	игра	quiz	kids	["8+", "10+"]	описание обычное	t	обычное 	2025-05-16 11:43:07.857	2025-05-16 11:43:07.857	\N	1	1	\N
10	ekuv3i8srl6kzeqo9xvikv0o	игра	quiz	kids	["8+", "10+"]	описание обычное	t	обычное 	2025-05-16 11:43:07.857	2025-05-16 11:43:07.857	2025-05-16 11:43:07.877	1	1	\N
11	qv3cb2pyaveo0coubvose2rv	Пространство вариантов	role	kids	["130+"]	описание 	f	\N	2025-05-16 11:47:02.241	2025-05-16 11:48:36.127	\N	1	1	\N
14	qv3cb2pyaveo0coubvose2rv	Пространство вариантов	role	kids	["130+"]	описание 	f	\N	2025-05-16 11:47:02.241	2025-05-16 11:48:36.127	2025-05-16 11:48:36.144	1	1	\N
\.


--
-- Data for Name: home_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.home_pages (id, document_id, title, description, about_title, about_description, about_full_description, founder_quote, founder_name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	p49nt4nqqx825xkj0t4gujll	АРТ ПРОСТРАНСТВО 	ДЛЯ ДЕТЕЙ И ВЗРОСЛЫХ	О нас	Добавить текст	Это арт-пространство с акцентом на развитие эмоционального и физического интеллекта для лидеров нового поколения через искусство.\nМы формируем и развиваем навыки soft skills (гибкие навыки мышления) и физический интеллект через игры, танцы и развлечения!\n	Работая с детьми и взрослыми, я заметила, что развитые навыки эмоционального\nи физического интеллекта делают их счастливыми и успешными. Это\nвдохновляет нашу команду воплощать новые идеи и делитьcя с вами энергией!\nНаш проект - больше, чем арт-пространство! Это - неограниченная способность\nмыслить и творить.	Креативный директор K.O.D. Ольга Рябико	2025-05-14 14:30:16.138	2025-05-15 22:37:01.467	\N	1	1	\N
17	p49nt4nqqx825xkj0t4gujll	АРТ ПРОСТРАНСТВО 	ДЛЯ ДЕТЕЙ И ВЗРОСЛЫХ	О нас	Добавить текст	Это арт-пространство с акцентом на развитие эмоционального и физического интеллекта для лидеров нового поколения через искусство.\nМы формируем и развиваем навыки soft skills (гибкие навыки мышления) и физический интеллект через игры, танцы и развлечения!\n	Работая с детьми и взрослыми, я заметила, что развитые навыки эмоционального\nи физического интеллекта делают их счастливыми и успешными. Это\nвдохновляет нашу команду воплощать новые идеи и делитьcя с вами энергией!\nНаш проект - больше, чем арт-пространство! Это - неограниченная способность\nмыслить и творить.	Креативный директор K.O.D. Ольга Рябико	2025-05-14 14:30:16.138	2025-05-15 22:37:01.467	2025-05-15 22:37:01.512	1	1	\N
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	odajza6rft6v7x7kpewuxviv	English (en)	en	2025-05-13 21:54:27.995	2025-05-13 21:54:27.995	2025-05-13 21:54:27.998	\N	\N	\N
\.


--
-- Data for Name: kids_games_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.kids_games_pages (id, document_id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	mpiaqoa6lmuhcf6oomr6ojka	Игры для детей 	Приводите детей на наши тусовки!	2025-05-14 17:22:03.531	2025-05-14 21:44:21.917	\N	1	1	\N
3	mpiaqoa6lmuhcf6oomr6ojka	Игры для детей 	Приводите детей на наши тусовки!	2025-05-14 17:22:03.531	2025-05-14 21:44:21.917	2025-05-14 21:44:21.959	1	1	\N
\.


--
-- Data for Name: kids_games_pages_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.kids_games_pages_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
2	1	5	shared.faq-item	faq	2
1	1	9	shared.page-header	pageHeader	3
3	1	1	shared.testimonial	testimonials	1
10	3	14	shared.page-header	pageHeader	\N
11	3	9	shared.faq-item	faq	1
12	3	3	shared.testimonial	testimonials	1
\.


--
-- Data for Name: open_parties_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.open_parties_pages (id, document_id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	a63zlsc43d42u4a58bcctfu6	Открытые вечеринки	Искусство отдыхать атмосферно	2025-05-14 17:24:13.868	2025-05-14 17:24:13.868	\N	1	1	\N
2	a63zlsc43d42u4a58bcctfu6	Открытые вечеринки	Искусство отдыхать атмосферно	2025-05-14 17:24:13.868	2025-05-14 17:24:13.868	2025-05-14 17:24:13.892	1	1	\N
\.


--
-- Data for Name: open_parties_pages_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.open_parties_pages_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	11	shared.page-header	pageHeader	\N
2	1	7	shared.faq-item	faq	1
3	2	12	shared.page-header	pageHeader	\N
4	2	8	shared.faq-item	faq	1
\.


--
-- Data for Name: personal_parties_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.personal_parties_pages (id, document_id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	anpgweywqsnlsyio8pnb0nw8	Персональные вечеринки	Искусство веселиться	2025-05-14 15:59:54.317	2025-05-15 22:51:10.285	\N	1	1	\N
12	anpgweywqsnlsyio8pnb0nw8	Персональные вечеринки	Искусство веселиться	2025-05-14 15:59:54.317	2025-05-15 22:51:10.285	2025-05-15 22:51:10.401	1	1	\N
\.


--
-- Data for Name: personal_parties_pages_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.personal_parties_pages_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
2	1	1	programs.program	programs	6
27	1	10	shared.faq-item	questions	2
44	1	4	shared.testimonial	testimonial	1
45	1	5	shared.testimonial	testimonial	3
219	12	28	shared.page-header	pageHeader	\N
220	12	29	programs.program	programs	1
221	12	30	programs.program	programs	2
222	12	31	programs.program	programs	3
223	12	45	shared.faq-item	questions	1
224	12	46	shared.faq-item	questions	2
225	12	47	shared.faq-item	questions	3
226	12	22	shared.testimonial	testimonial	1
227	12	23	shared.testimonial	testimonial	2
228	12	24	shared.testimonial	testimonial	3
229	12	41	shared.fishki	fishki	1
230	12	42	shared.fishki	fishki	2
231	12	43	shared.fishki	fishki	3
232	12	44	shared.fishki	fishki	4
233	12	45	shared.fishki	fishki	5
234	12	46	shared.fishki	fishki	6
235	12	47	shared.fishki	fishki	7
236	12	48	shared.fishki	fishki	8
1	1	3	shared.page-header	pageHeader	18
11	1	4	programs.program	programs	9
18	1	7	programs.program	programs	10
28	1	11	shared.faq-item	questions	4
29	1	12	shared.faq-item	questions	7
46	1	6	shared.testimonial	testimonial	5
67	1	1	shared.fishki	fishki	1
68	1	2	shared.fishki	fishki	2
69	1	3	shared.fishki	fishki	3
70	1	4	shared.fishki	fishki	4
71	1	5	shared.fishki	fishki	5
72	1	6	shared.fishki	fishki	6
73	1	7	shared.fishki	fishki	7
74	1	8	shared.fishki	fishki	8
\.


--
-- Data for Name: promo_banners; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.promo_banners (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, button_text, button_link, is_external_link, is_active) FROM stdin;
1	j056fyglwtktl4x3nc67m75b	наш топчик 	2025-05-28 18:28:02.537	2025-06-01 07:19:04.695	\N	1	1	\N	123	http://localhost:1342/open-parties	\N	t
4	j056fyglwtktl4x3nc67m75b	наш топчик 	2025-05-28 18:28:02.537	2025-06-01 07:19:04.695	2025-06-01 07:19:04.715	1	1	\N	123	http://localhost:1342/open-parties	\N	t
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	l7yfnsagi4bzr21hi2zfaguj	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	3164b6068a99f97b0177e094cbcb46b690769267f06158e52244aa56399dba3f73405d8d659f955f00fc972049223d67117df797d4562f5c729152c3cfb96e20	\N	\N	\N	2025-05-13 21:54:31.126	2025-05-13 21:54:31.126	2025-05-13 21:54:31.127	\N	\N	\N
2	knk4s0ltvrwguci94oxo9t5s	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	c7b0aa2f80919a6ebd5a0b8240d0d0b81304ae4e466562d2e40383d2747933153a0806cc4186f7919bb03a72789eb91bdade027a0cc685dd6ebcab62a85409d3	\N	\N	\N	2025-05-13 21:54:31.136	2025-05-13 21:54:31.136	2025-05-13 21:54:31.136	\N	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
6	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
3	plugin_content_manager_configuration_components::shared.page-header	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}]]},"uid":"shared.page-header","isComponent":true}	object	\N	\N
43	plugin_content_manager_configuration_components::shared.fishki	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","Description"],"edit":[[{"name":"Title","size":6},{"name":"Description","size":6}]]},"uid":"shared.fishki","isComponent":true}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
1	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::adult-games-page.adult-games-page":{"kind":"singleType","collectionName":"adult_games_pages","info":{"singularName":"adult-games-page","pluralName":"adult-games-pages","displayName":"Adult Games Page","description":"Adult games page content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true},"Description":{"type":"text","required":true},"CoverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"Gallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"pageHeader":{"type":"component","component":"shared.page-header","required":true},"faq":{"type":"component","component":"shared.faq-item","repeatable":true},"testimonial":{"type":"component","repeatable":true,"component":"shared.testimonial"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::adult-games-page.adult-games-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"adult_games_pages"}}},"apiName":"adult-games-page","globalId":"AdultGamesPage","uid":"api::adult-games-page.adult-games-page","modelType":"contentType","__schema__":{"collectionName":"adult_games_pages","info":{"singularName":"adult-games-page","pluralName":"adult-games-pages","displayName":"Adult Games Page","description":"Adult games page content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true},"Description":{"type":"text","required":true},"CoverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"Gallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"pageHeader":{"type":"component","component":"shared.page-header","required":true},"faq":{"type":"component","component":"shared.faq-item","repeatable":true},"testimonial":{"type":"component","repeatable":true,"component":"shared.testimonial"}},"kind":"singleType"},"modelName":"adult-games-page","actions":{},"lifecycles":{}},"api::coffee-page.coffee-page":{"kind":"singleType","collectionName":"coffee_pages","info":{"singularName":"coffee-page","pluralName":"coffee-pages","displayName":"coffee-page","description":""},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string"},"heroSubtitle":{"type":"text"},"sectionTitle":{"type":"string"},"description":{"type":"text"},"galleryTitle":{"type":"string"},"galleryImages":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"classicMenuFile":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"seasonalMenuFile":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::coffee-page.coffee-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"coffee_pages"}}},"apiName":"coffee-page","globalId":"CoffeePage","uid":"api::coffee-page.coffee-page","modelType":"contentType","__schema__":{"collectionName":"coffee_pages","info":{"singularName":"coffee-page","pluralName":"coffee-pages","displayName":"coffee-page","description":""},"options":{"draftAndPublish":true},"attributes":{"heroTitle":{"type":"string"},"heroSubtitle":{"type":"text"},"sectionTitle":{"type":"string"},"description":{"type":"text"},"galleryTitle":{"type":"string"},"galleryImages":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"classicMenuFile":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"seasonalMenuFile":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"singleType"},"modelName":"coffee-page","actions":{},"lifecycles":{}},"api::contact.contact":{"kind":"collectionType","collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact Form Submissions","description":"Store contact form submissions from the website"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":false},"email":{"type":"email","required":false},"phone":{"type":"string","required":false},"message":{"type":"text","required":false},"formType":{"type":"string","required":false,"default":"Обратная связь"},"additionalData":{"type":"json","required":false},"processed":{"type":"boolean","default":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::contact.contact","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"contacts"}}},"apiName":"contact","globalId":"Contact","uid":"api::contact.contact","modelType":"contentType","__schema__":{"collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact Form Submissions","description":"Store contact form submissions from the website"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":false},"email":{"type":"email","required":false},"phone":{"type":"string","required":false},"message":{"type":"text","required":false},"formType":{"type":"string","required":false,"default":"Обратная связь"},"additionalData":{"type":"json","required":false},"processed":{"type":"boolean","default":false,"required":false}},"kind":"collectionType"},"modelName":"contact","actions":{},"lifecycles":{}},"api::dance-page.dance-page":{"kind":"singleType","collectionName":"dance_pages","info":{"singularName":"dance-page","pluralName":"dance-pages","displayName":"Dance Page","description":""},"options":{"draftAndPublish":true},"attributes":{"Title":{"type":"string"},"Description":{"type":"text"},"questions":{"type":"component","repeatable":true,"component":"shared.faq-item"},"danceTypes":{"type":"component","repeatable":true,"component":"shared.dance-types"},"aboutUs":{"type":"component","repeatable":true,"component":"shared.page-header"},"prices":{"displayName":"prices","type":"component","repeatable":true,"component":"shared.prices"},"trainer":{"displayName":"trainers","type":"component","repeatable":true,"component":"shared.trainers"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::dance-page.dance-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"dance_pages"}}},"apiName":"dance-page","globalId":"DancePage","uid":"api::dance-page.dance-page","modelType":"contentType","__schema__":{"collectionName":"dance_pages","info":{"singularName":"dance-page","pluralName":"dance-pages","displayName":"Dance Page","description":""},"options":{"draftAndPublish":true},"attributes":{"Title":{"type":"string"},"Description":{"type":"text"},"questions":{"type":"component","repeatable":true,"component":"shared.faq-item"},"danceTypes":{"type":"component","repeatable":true,"component":"shared.dance-types"},"aboutUs":{"type":"component","repeatable":true,"component":"shared.page-header"},"prices":{"displayName":"prices","type":"component","repeatable":true,"component":"shared.prices"},"trainer":{"displayName":"trainers","type":"component","repeatable":true,"component":"shared.trainers"}},"kind":"singleType"},"modelName":"dance-page","actions":{},"lifecycles":{}},"api::event.event":{"kind":"collectionType","collectionName":"events","info":{"singularName":"event","pluralName":"events","displayName":"Event","description":"Events for the calendar"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"date":{"type":"datetime","required":true},"type":{"type":"enumeration","enum":["kids","adults","openParties"],"default":"adults","required":true},"shortDescription":{"type":"text","required":true},"fullDescription":{"type":"richtext","required":true},"price":{"type":"decimal","required":true,"min":0},"maxParticipants":{"type":"integer","required":true,"min":1},"currentParticipants":{"type":"integer","default":0,"min":0},"location":{"type":"string","required":true},"duration":{"type":"string","required":true},"coverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"gallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"slug":{"type":"uid","targetField":"title"},"eventLink":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::event.event","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"events"}}},"apiName":"event","globalId":"Event","uid":"api::event.event","modelType":"contentType","__schema__":{"collectionName":"events","info":{"singularName":"event","pluralName":"events","displayName":"Event","description":"Events for the calendar"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"date":{"type":"datetime","required":true},"type":{"type":"enumeration","enum":["kids","adults","openParties"],"default":"adults","required":true},"shortDescription":{"type":"text","required":true},"fullDescription":{"type":"richtext","required":true},"price":{"type":"decimal","required":true,"min":0},"maxParticipants":{"type":"integer","required":true,"min":1},"currentParticipants":{"type":"integer","default":0,"min":0},"location":{"type":"string","required":true},"duration":{"type":"string","required":true},"coverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"gallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"slug":{"type":"uid","targetField":"title"},"eventLink":{"type":"string"}},"kind":"collectionType"},"modelName":"event","actions":{},"lifecycles":{}},"api::footer.footer":{"kind":"singleType","collectionName":"footers","info":{"singularName":"footer","pluralName":"footers","displayName":"footer","description":"Footer configuration with contact information and social media links"},"options":{"draftAndPublish":true},"attributes":{"number":{"type":"string"},"email":{"type":"string"},"adress":{"type":"string"},"vkLink":{"type":"string","description":"Full URL to VK page (e.g. https://vk.com/...)"},"telegramLink":{"type":"string","description":"Full URL to Telegram channel (e.g. https://t.me/...)"},"rutubeLink":{"type":"string","description":"Full URL to Rutube channel (e.g. https://rutube.ru/...)"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::footer.footer","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"footers"}}},"apiName":"footer","globalId":"Footer","uid":"api::footer.footer","modelType":"contentType","__schema__":{"collectionName":"footers","info":{"singularName":"footer","pluralName":"footers","displayName":"footer","description":"Footer configuration with contact information and social media links"},"options":{"draftAndPublish":true},"attributes":{"number":{"type":"string"},"email":{"type":"string"},"adress":{"type":"string"},"vkLink":{"type":"string","description":"Full URL to VK page (e.g. https://vk.com/...)"},"telegramLink":{"type":"string","description":"Full URL to Telegram channel (e.g. https://t.me/...)"},"rutubeLink":{"type":"string","description":"Full URL to Rutube channel (e.g. https://rutube.ru/...)"}},"kind":"singleType"},"modelName":"footer","actions":{},"lifecycles":{}},"api::game.game":{"kind":"collectionType","collectionName":"games","info":{"singularName":"game","pluralName":"games","displayName":"Game","description":"Collection of all available games"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string","required":true,"description":"Name of the game"},"gameType":{"type":"enumeration","enum":["role","quest","show","quiz","tgame","dance"],"required":true,"description":"Type of the game"},"audienceType":{"type":"enumeration","enum":["kids","adults"],"required":true,"description":"Target audience for the game"},"ageGroups":{"type":"json","required":true,"description":"Array of age groups like ['6+', '12+', '16+']"},"description":{"type":"text","required":true,"description":"Main description of the game"},"hasPremiumVersion":{"type":"boolean","default":false,"description":"Whether the game has a premium version"},"premiumDescription":{"type":"text","description":"Description of the premium version if available"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::game.game","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"games"}}},"apiName":"game","globalId":"Game","uid":"api::game.game","modelType":"contentType","__schema__":{"collectionName":"games","info":{"singularName":"game","pluralName":"games","displayName":"Game","description":"Collection of all available games"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string","required":true,"description":"Name of the game"},"gameType":{"type":"enumeration","enum":["role","quest","show","quiz","tgame","dance"],"required":true,"description":"Type of the game"},"audienceType":{"type":"enumeration","enum":["kids","adults"],"required":true,"description":"Target audience for the game"},"ageGroups":{"type":"json","required":true,"description":"Array of age groups like ['6+', '12+', '16+']"},"description":{"type":"text","required":true,"description":"Main description of the game"},"hasPremiumVersion":{"type":"boolean","default":false,"description":"Whether the game has a premium version"},"premiumDescription":{"type":"text","description":"Description of the premium version if available"}},"kind":"collectionType"},"modelName":"game","actions":{},"lifecycles":{}},"api::home-page.home-page":{"kind":"collectionType","collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"Home page","description":""},"options":{"draftAndPublish":true},"attributes":{"Title":{"type":"string","required":true},"Description":{"type":"richtext","required":true},"About_Title":{"type":"string"},"About_Description":{"type":"text"},"About_Full_Description":{"type":"richtext"},"Gallery_Images1":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Founder_Quote":{"type":"text"},"Founder_Name":{"type":"string"},"Founder_Images":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Gallery_Images2":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::home-page.home-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"home_pages"}}},"apiName":"home-page","globalId":"HomePage","uid":"api::home-page.home-page","modelType":"contentType","__schema__":{"collectionName":"home_pages","info":{"singularName":"home-page","pluralName":"home-pages","displayName":"Home page","description":""},"options":{"draftAndPublish":true},"attributes":{"Title":{"type":"string","required":true},"Description":{"type":"richtext","required":true},"About_Title":{"type":"string"},"About_Description":{"type":"text"},"About_Full_Description":{"type":"richtext"},"Gallery_Images1":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Founder_Quote":{"type":"text"},"Founder_Name":{"type":"string"},"Founder_Images":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"Gallery_Images2":{"type":"media","multiple":true,"required":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"home-page","actions":{},"lifecycles":{}},"api::kids-games-page.kids-games-page":{"kind":"singleType","collectionName":"kids_games_pages","info":{"singularName":"kids-games-page","pluralName":"kids-games-pages","displayName":"Kids Games Page","description":"Kids games page content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true},"Description":{"type":"text","required":true},"CoverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"Gallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"pageHeader":{"type":"component","component":"shared.page-header","required":true},"faq":{"type":"component","component":"shared.faq-item","repeatable":true},"testimonials":{"type":"component","component":"shared.testimonial","repeatable":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::kids-games-page.kids-games-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"kids_games_pages"}}},"apiName":"kids-games-page","globalId":"KidsGamesPage","uid":"api::kids-games-page.kids-games-page","modelType":"contentType","__schema__":{"collectionName":"kids_games_pages","info":{"singularName":"kids-games-page","pluralName":"kids-games-pages","displayName":"Kids Games Page","description":"Kids games page content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true},"Description":{"type":"text","required":true},"CoverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"Gallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"pageHeader":{"type":"component","component":"shared.page-header","required":true},"faq":{"type":"component","component":"shared.faq-item","repeatable":true},"testimonials":{"type":"component","component":"shared.testimonial","repeatable":true}},"kind":"singleType"},"modelName":"kids-games-page","actions":{},"lifecycles":{}},"api::open-parties-page.open-parties-page":{"kind":"singleType","collectionName":"open_parties_pages","info":{"singularName":"open-parties-page","pluralName":"open-parties-pages","displayName":"Open Parties Page","description":"Open parties page content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"description":{"type":"text","required":true},"coverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"gallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"pageHeader":{"type":"component","component":"shared.page-header","required":true},"faq":{"type":"component","component":"shared.faq-item","repeatable":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::open-parties-page.open-parties-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"open_parties_pages"}}},"apiName":"open-parties-page","globalId":"OpenPartiesPage","uid":"api::open-parties-page.open-parties-page","modelType":"contentType","__schema__":{"collectionName":"open_parties_pages","info":{"singularName":"open-parties-page","pluralName":"open-parties-pages","displayName":"Open Parties Page","description":"Open parties page content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"description":{"type":"text","required":true},"coverImage":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"gallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"pageHeader":{"type":"component","component":"shared.page-header","required":true},"faq":{"type":"component","component":"shared.faq-item","repeatable":true}},"kind":"singleType"},"modelName":"open-parties-page","actions":{},"lifecycles":{}},"api::personal-parties-page.personal-parties-page":{"kind":"singleType","collectionName":"personal_parties_pages","info":{"singularName":"personal-parties-page","pluralName":"personal-parties-pages","displayName":"Personal Parties Page","description":"Content for the Personal Parties page"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true},"pageHeader":{"type":"component","component":"shared.page-header","required":true},"Description":{"type":"text","required":true},"rentGallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"programs":{"type":"component","component":"programs.program","repeatable":true,"required":true,"min":1},"questions":{"type":"component","repeatable":true,"component":"shared.faq-item"},"testimonial":{"type":"component","repeatable":true,"component":"shared.testimonial"},"fishki":{"type":"component","repeatable":true,"component":"shared.fishki"},"gameGallery":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"themeGallery":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::personal-parties-page.personal-parties-page","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"personal_parties_pages"}}},"apiName":"personal-parties-page","globalId":"PersonalPartiesPage","uid":"api::personal-parties-page.personal-parties-page","modelType":"contentType","__schema__":{"collectionName":"personal_parties_pages","info":{"singularName":"personal-parties-page","pluralName":"personal-parties-pages","displayName":"Personal Parties Page","description":"Content for the Personal Parties page"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true},"pageHeader":{"type":"component","component":"shared.page-header","required":true},"Description":{"type":"text","required":true},"rentGallery":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"programs":{"type":"component","component":"programs.program","repeatable":true,"required":true,"min":1},"questions":{"type":"component","repeatable":true,"component":"shared.faq-item"},"testimonial":{"type":"component","repeatable":true,"component":"shared.testimonial"},"fishki":{"type":"component","repeatable":true,"component":"shared.fishki"},"gameGallery":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"themeGallery":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true}},"kind":"singleType"},"modelName":"personal-parties-page","actions":{},"lifecycles":{}},"api::promo-banner.promo-banner":{"kind":"singleType","collectionName":"promo_banners","info":{"singularName":"promo-banner","pluralName":"promo-banners","displayName":"Promo Banner","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"buttonText":{"type":"string"},"buttonLink":{"type":"string"},"isExternalLink":{"type":"boolean"},"isActive":{"type":"boolean"},"CoverImage":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::promo-banner.promo-banner","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"promo_banners"}}},"apiName":"promo-banner","globalId":"PromoBanner","uid":"api::promo-banner.promo-banner","modelType":"contentType","__schema__":{"collectionName":"promo_banners","info":{"singularName":"promo-banner","pluralName":"promo-banners","displayName":"Promo Banner","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"buttonText":{"type":"string"},"buttonLink":{"type":"string"},"isExternalLink":{"type":"boolean"},"isActive":{"type":"boolean"},"CoverImage":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false}},"kind":"singleType"},"modelName":"promo-banner","actions":{},"lifecycles":{}},"api::theme-party-event.theme-party-event":{"kind":"collectionType","collectionName":"theme_party_events","info":{"singularName":"theme-party-event","pluralName":"theme-party-events","displayName":"Theme-party-event"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"slug":{"type":"uid","targetField":"title"},"description":{"type":"blocks"},"coverImage":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"media":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::theme-party-event.theme-party-event","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"theme_party_events"}}},"apiName":"theme-party-event","globalId":"ThemePartyEvent","uid":"api::theme-party-event.theme-party-event","modelType":"contentType","__schema__":{"collectionName":"theme_party_events","info":{"singularName":"theme-party-event","pluralName":"theme-party-events","displayName":"Theme-party-event"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"slug":{"type":"uid","targetField":"title"},"description":{"type":"blocks"},"coverImage":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":false},"media":{"allowedTypes":["images","files","videos","audios"],"type":"media","multiple":true}},"kind":"collectionType"},"modelName":"theme-party-event","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::contact.contact	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"formType":{"edit":{"label":"formType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formType","searchable":true,"sortable":true}},"additionalData":{"edit":{"label":"additionalData","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"additionalData","searchable":false,"sortable":false}},"processed":{"edit":{"label":"processed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"processed","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","email","phone"],"edit":[[{"name":"name","size":6},{"name":"email","size":6}],[{"name":"phone","size":6},{"name":"message","size":6}],[{"name":"formType","size":6}],[{"name":"additionalData","size":12}],[{"name":"processed","size":4}]]},"uid":"api::contact.contact"}	object	\N	\N
31	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
44	plugin_content_manager_configuration_components::shared.dance-types	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"CoverImage":{"edit":{"label":"CoverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CoverImage","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","CoverImage"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"CoverImage","size":6}]]},"uid":"shared.dance-types","isComponent":true}	object	\N	\N
46	plugin_content_manager_configuration_components::shared.points	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"point","defaultSortBy":"point","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"point":{"edit":{"label":"point","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"point","searchable":true,"sortable":true}}},"layouts":{"list":["id","point"],"edit":[[{"name":"point","size":6}]]},"uid":"shared.points","isComponent":true}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::api::open-parties-page.open-parties-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"coverImage":{"edit":{"label":"coverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coverImage","searchable":false,"sortable":false}},"gallery":{"edit":{"label":"gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gallery","searchable":false,"sortable":false}},"pageHeader":{"edit":{"label":"pageHeader","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pageHeader","searchable":false,"sortable":false}},"faq":{"edit":{"label":"faq","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"faq","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","coverImage"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"coverImage","size":6},{"name":"gallery","size":6}],[{"name":"pageHeader","size":12}],[{"name":"faq","size":12}]]},"uid":"api::open-parties-page.open-parties-page"}	object	\N	\N
38	plugin_i18n_default_locale	"en"	string	\N	\N
29	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
45	plugin_content_manager_configuration_components::shared.prices	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"shortDescription":{"edit":{"label":"shortDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortDescription","searchable":true,"sortable":true}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"points":{"edit":{"label":"points","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"points","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","shortDescription","price"],"edit":[[{"name":"title","size":6},{"name":"shortDescription","size":6}],[{"name":"price","size":4}],[{"name":"points","size":12}]]},"uid":"shared.prices","isComponent":true}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::dance-page.dance-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"questions":{"edit":{"label":"questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"questions","searchable":false,"sortable":false}},"danceTypes":{"edit":{"label":"danceTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"danceTypes","searchable":false,"sortable":false}},"aboutUs":{"edit":{"label":"aboutUs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"aboutUs","searchable":false,"sortable":false}},"prices":{"edit":{"label":"prices","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"prices","searchable":false,"sortable":false}},"trainer":{"edit":{"label":"trainer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trainer","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","Description","createdAt"],"edit":[[{"name":"Title","size":6},{"name":"Description","size":6}],[{"name":"questions","size":12}],[{"name":"danceTypes","size":12}],[{"name":"aboutUs","size":12}],[{"name":"prices","size":12}],[{"name":"trainer","size":12}]]},"uid":"api::dance-page.dance-page"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::event.event	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"shortDescription":{"edit":{"label":"shortDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortDescription","searchable":true,"sortable":true}},"fullDescription":{"edit":{"label":"fullDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fullDescription","searchable":false,"sortable":false}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"maxParticipants":{"edit":{"label":"maxParticipants","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"maxParticipants","searchable":true,"sortable":true}},"currentParticipants":{"edit":{"label":"currentParticipants","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"currentParticipants","searchable":true,"sortable":true}},"location":{"edit":{"label":"location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"location","searchable":true,"sortable":true}},"duration":{"edit":{"label":"duration","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"duration","searchable":true,"sortable":true}},"coverImage":{"edit":{"label":"coverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coverImage","searchable":false,"sortable":false}},"gallery":{"edit":{"label":"gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gallery","searchable":false,"sortable":false}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"eventLink":{"edit":{"label":"eventLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"eventLink","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","date","type"],"edit":[[{"name":"title","size":6},{"name":"date","size":6}],[{"name":"type","size":6},{"name":"shortDescription","size":6}],[{"name":"fullDescription","size":12}],[{"name":"price","size":4},{"name":"maxParticipants","size":4},{"name":"currentParticipants","size":4}],[{"name":"location","size":6},{"name":"duration","size":6}],[{"name":"coverImage","size":6},{"name":"gallery","size":6}],[{"name":"slug","size":6},{"name":"eventLink","size":6}]]},"uid":"api::event.event"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::promo-banner.promo-banner	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"buttonText":{"edit":{"label":"buttonText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonText","searchable":true,"sortable":true}},"buttonLink":{"edit":{"label":"buttonLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"buttonLink","searchable":true,"sortable":true}},"isExternalLink":{"edit":{"label":"isExternalLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isExternalLink","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"CoverImage":{"edit":{"label":"CoverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CoverImage","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6},{"name":"buttonText","size":6}],[{"name":"buttonLink","size":6},{"name":"isExternalLink","size":4}],[{"name":"isActive","size":4},{"name":"CoverImage","size":6}]]},"uid":"api::promo-banner.promo-banner"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::footer.footer	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"number","defaultSortBy":"number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"adress":{"edit":{"label":"adress","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"adress","searchable":true,"sortable":true}},"vkLink":{"edit":{"label":"vkLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"vkLink","searchable":true,"sortable":true}},"telegramLink":{"edit":{"label":"telegramLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"telegramLink","searchable":true,"sortable":true}},"rutubeLink":{"edit":{"label":"rutubeLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rutubeLink","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","number","email","adress"],"edit":[[{"name":"number","size":6},{"name":"email","size":6}],[{"name":"adress","size":6},{"name":"rutubeLink","size":6}],[{"name":"telegramLink","size":6},{"name":"vkLink","size":6}]]},"uid":"api::footer.footer"}	object	\N	\N
47	plugin_content_manager_configuration_components::shared.trainers	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"mainImage":{"edit":{"label":"mainImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mainImage","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}}},"layouts":{"list":["id","mainImage","name","description"],"edit":[[{"name":"mainImage","size":6},{"name":"name","size":6}],[{"name":"description","size":6}]]},"uid":"shared.trainers","isComponent":true}	object	\N	\N
28	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::game.game	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"gameType":{"edit":{"label":"gameType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gameType","searchable":true,"sortable":true}},"audienceType":{"edit":{"label":"audienceType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"audienceType","searchable":true,"sortable":true}},"ageGroups":{"edit":{"label":"ageGroups","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ageGroups","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"hasPremiumVersion":{"edit":{"label":"hasPremiumVersion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hasPremiumVersion","searchable":true,"sortable":true}},"premiumDescription":{"edit":{"label":"premiumDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"premiumDescription","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","gameType","audienceType"],"edit":[[{"name":"title","size":6},{"name":"gameType","size":6}],[{"name":"audienceType","size":6}],[{"name":"ageGroups","size":12}],[{"name":"description","size":6},{"name":"hasPremiumVersion","size":4}],[{"name":"premiumDescription","size":6}]]},"uid":"api::game.game"}	object	\N	\N
32	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::kids-games-page.kids-games-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"CoverImage":{"edit":{"label":"CoverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CoverImage","searchable":false,"sortable":false}},"Gallery":{"edit":{"label":"Gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gallery","searchable":false,"sortable":false}},"pageHeader":{"edit":{"label":"pageHeader","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pageHeader","searchable":false,"sortable":false}},"faq":{"edit":{"label":"faq","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"faq","searchable":false,"sortable":false}},"testimonials":{"edit":{"label":"testimonials","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"testimonials","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","Description","CoverImage"],"edit":[[{"name":"Title","size":6},{"name":"Description","size":6}],[{"name":"CoverImage","size":6},{"name":"Gallery","size":6}],[{"name":"pageHeader","size":12}],[{"name":"faq","size":12}],[{"name":"testimonials","size":12}]]},"uid":"api::kids-games-page.kids-games-page"}	object	\N	\N
35	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
36	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
33	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::api::personal-parties-page.personal-parties-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"pageHeader":{"edit":{"label":"pageHeader","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pageHeader","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"rentGallery":{"edit":{"label":"rentGallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rentGallery","searchable":false,"sortable":false}},"programs":{"edit":{"label":"programs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"programs","searchable":false,"sortable":false}},"questions":{"edit":{"label":"questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"questions","searchable":false,"sortable":false}},"testimonial":{"edit":{"label":"testimonial","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"testimonial","searchable":false,"sortable":false}},"fishki":{"edit":{"label":"fishki","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fishki","searchable":false,"sortable":false}},"gameGallery":{"edit":{"label":"gameGallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gameGallery","searchable":false,"sortable":false}},"themeGallery":{"edit":{"label":"themeGallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"themeGallery","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","pageHeader","Description"],"edit":[[{"name":"Title","size":6}],[{"name":"pageHeader","size":12}],[{"name":"Description","size":6}],[{"name":"programs","size":12}],[{"name":"questions","size":12}],[{"name":"testimonial","size":12}],[{"name":"fishki","size":12}],[{"name":"rentGallery","size":6},{"name":"gameGallery","size":6}],[{"name":"themeGallery","size":6}]]},"uid":"api::personal-parties-page.personal-parties-page"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::api::theme-party-event.theme-party-event	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"coverImage":{"edit":{"label":"coverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coverImage","searchable":false,"sortable":false}},"media":{"edit":{"label":"media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"media","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug","coverImage"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"description","size":12}],[{"name":"coverImage","size":6},{"name":"media","size":6}]]},"uid":"api::theme-party-event.theme-party-event"}	object	\N	\N
42	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
37	plugin_upload_metrics	{"weeklySchedule":"27 9 6 * * 0","lastWeeklyUpdate":1748747367031}	object	\N	\N
34	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
40	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
41	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
2	plugin_content_manager_configuration_components::shared.testimonial	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"author","defaultSortBy":"author","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"author","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","author"],"edit":[[{"name":"text","size":6},{"name":"author","size":6}]]},"uid":"shared.testimonial","isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::shared.faq-item	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"question","defaultSortBy":"question","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"answer","searchable":true,"sortable":true}}},"layouts":{"list":["id","question","answer"],"edit":[[{"name":"question","size":6},{"name":"answer","size":6}]]},"uid":"shared.faq-item","isComponent":true}	object	\N	\N
4	plugin_content_manager_configuration_components::programs.program	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"mainImage":{"edit":{"label":"mainImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mainImage","searchable":false,"sortable":false}},"galleryImages":{"edit":{"label":"galleryImages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"galleryImages","searchable":false,"sortable":false}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"shortDescription":{"edit":{"label":"shortDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shortDescription","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","mainImage","galleryImages"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"mainImage","size":6},{"name":"galleryImages","size":6}],[{"name":"slug","size":6},{"name":"shortDescription","size":6}]]},"uid":"programs.program","isComponent":true}	object	\N	\N
39	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::home-page.home-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"About_Title":{"edit":{"label":"About_Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"About_Title","searchable":true,"sortable":true}},"About_Description":{"edit":{"label":"About_Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"About_Description","searchable":true,"sortable":true}},"About_Full_Description":{"edit":{"label":"About_Full_Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"About_Full_Description","searchable":false,"sortable":false}},"Gallery_Images1":{"edit":{"label":"Gallery_Images1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gallery_Images1","searchable":false,"sortable":false}},"Founder_Quote":{"edit":{"label":"Founder_Quote","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Founder_Quote","searchable":true,"sortable":true}},"Founder_Name":{"edit":{"label":"Founder_Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Founder_Name","searchable":true,"sortable":true}},"Founder_Images":{"edit":{"label":"Founder_Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Founder_Images","searchable":false,"sortable":false}},"Gallery_Images2":{"edit":{"label":"Gallery_Images2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gallery_Images2","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","Gallery_Images1"],"edit":[[{"name":"Title","size":6}],[{"name":"Description","size":12}],[{"name":"About_Title","size":6}],[{"name":"About_Description","size":6}],[{"name":"About_Full_Description","size":12}],[{"name":"Founder_Quote","size":6}],[{"name":"Founder_Name","size":6},{"name":"Founder_Images","size":6}],[{"name":"Gallery_Images1","size":6},{"name":"Gallery_Images2","size":6}]]},"uid":"api::home-page.home-page"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::coffee-page.coffee-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heroTitle","defaultSortBy":"heroTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heroTitle":{"edit":{"label":"heroTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroTitle","searchable":true,"sortable":true}},"heroSubtitle":{"edit":{"label":"heroSubtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heroSubtitle","searchable":true,"sortable":true}},"sectionTitle":{"edit":{"label":"sectionTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionTitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"galleryTitle":{"edit":{"label":"galleryTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"galleryTitle","searchable":true,"sortable":true}},"galleryImages":{"edit":{"label":"galleryImages","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"galleryImages","searchable":false,"sortable":false}},"classicMenuFile":{"edit":{"label":"classicMenuFile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"classicMenuFile","searchable":false,"sortable":false}},"seasonalMenuFile":{"edit":{"label":"seasonalMenuFile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seasonalMenuFile","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","heroTitle","heroSubtitle","sectionTitle"],"edit":[[{"name":"heroTitle","size":6},{"name":"heroSubtitle","size":6}],[{"name":"sectionTitle","size":6},{"name":"description","size":6}],[{"name":"galleryTitle","size":6},{"name":"galleryImages","size":6}],[{"name":"classicMenuFile","size":6},{"name":"seasonalMenuFile","size":6}]]},"uid":"api::coffee-page.coffee-page"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::adult-games-page.adult-games-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"CoverImage":{"edit":{"label":"CoverImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CoverImage","searchable":false,"sortable":false}},"Gallery":{"edit":{"label":"Gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gallery","searchable":false,"sortable":false}},"pageHeader":{"edit":{"label":"pageHeader","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pageHeader","searchable":false,"sortable":false}},"faq":{"edit":{"label":"faq","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"faq","searchable":false,"sortable":false}},"testimonial":{"edit":{"label":"testimonial","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"testimonial","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","Description","CoverImage"],"edit":[[{"name":"Title","size":6},{"name":"Description","size":6}],[{"name":"CoverImage","size":6},{"name":"Gallery","size":6}],[{"name":"pageHeader","size":12}],[{"name":"faq","size":12}],[{"name":"testimonial","size":12}]]},"uid":"api::adult-games-page.adult-games-page"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
164	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"adult_games_pages_cmps","indexes":[{"name":"adult_games_pages_field_idx","columns":["field"]},{"name":"adult_games_pages_component_type_idx","columns":["component_type"]},{"name":"adult_games_pages_entity_fk","columns":["entity_id"]},{"name":"adult_games_pages_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"adult_games_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"adult_games_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"adult_games_pages","indexes":[{"name":"adult_games_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"adult_games_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"adult_games_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"adult_games_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"adult_games_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"coffee_pages","indexes":[{"name":"coffee_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"coffee_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"coffee_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"coffee_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"coffee_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hero_subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"section_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gallery_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"contacts","indexes":[{"name":"contacts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"contacts_created_by_id_fk","columns":["created_by_id"]},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"additional_data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"processed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"dance_pages_cmps","indexes":[{"name":"dance_pages_field_idx","columns":["field"]},{"name":"dance_pages_component_type_idx","columns":["component_type"]},{"name":"dance_pages_entity_fk","columns":["entity_id"]},{"name":"dance_pages_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"dance_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"dance_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dance_pages","indexes":[{"name":"dance_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"dance_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"dance_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"dance_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"dance_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"events","indexes":[{"name":"events_documents_idx","columns":["document_id","locale","published_at"]},{"name":"events_created_by_id_fk","columns":["created_by_id"]},{"name":"events_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"events_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"events_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"full_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"max_participants","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"current_participants","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"duration","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"event_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"footers","indexes":[{"name":"footers_documents_idx","columns":["document_id","locale","published_at"]},{"name":"footers_created_by_id_fk","columns":["created_by_id"]},{"name":"footers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"footers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"footers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"adress","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"vk_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"telegram_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rutube_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"games","indexes":[{"name":"games_documents_idx","columns":["document_id","locale","published_at"]},{"name":"games_created_by_id_fk","columns":["created_by_id"]},{"name":"games_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"games_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"games_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"game_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"audience_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"age_groups","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"has_premium_version","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"premium_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"home_pages","indexes":[{"name":"home_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"home_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"home_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"home_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"about_full_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"founder_quote","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"founder_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"kids_games_pages_cmps","indexes":[{"name":"kids_games_pages_field_idx","columns":["field"]},{"name":"kids_games_pages_component_type_idx","columns":["component_type"]},{"name":"kids_games_pages_entity_fk","columns":["entity_id"]},{"name":"kids_games_pages_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"kids_games_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"kids_games_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"kids_games_pages","indexes":[{"name":"kids_games_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"kids_games_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"kids_games_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"kids_games_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"kids_games_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"open_parties_pages_cmps","indexes":[{"name":"open_parties_pages_field_idx","columns":["field"]},{"name":"open_parties_pages_component_type_idx","columns":["component_type"]},{"name":"open_parties_pages_entity_fk","columns":["entity_id"]},{"name":"open_parties_pages_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"open_parties_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"open_parties_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"open_parties_pages","indexes":[{"name":"open_parties_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"open_parties_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"open_parties_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"open_parties_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"open_parties_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"personal_parties_pages_cmps","indexes":[{"name":"personal_parties_pages_field_idx","columns":["field"]},{"name":"personal_parties_pages_component_type_idx","columns":["component_type"]},{"name":"personal_parties_pages_entity_fk","columns":["entity_id"]},{"name":"personal_parties_pages_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"personal_parties_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"personal_parties_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"personal_parties_pages","indexes":[{"name":"personal_parties_pages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"personal_parties_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"personal_parties_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"personal_parties_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"personal_parties_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"promo_banners","indexes":[{"name":"promo_banners_documents_idx","columns":["document_id","locale","published_at"]},{"name":"promo_banners_created_by_id_fk","columns":["created_by_id"]},{"name":"promo_banners_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"promo_banners_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"promo_banners_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"button_link","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_external_link","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"theme_party_events","indexes":[{"name":"theme_party_events_documents_idx","columns":["document_id","locale","published_at"]},{"name":"theme_party_events_created_by_id_fk","columns":["created_by_id"]},{"name":"theme_party_events_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"theme_party_events_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"theme_party_events_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_trainers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_testimonials","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"author","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_prices_cmps","indexes":[{"name":"components_shared_prices_field_idx","columns":["field"]},{"name":"components_shared_prices_component_type_idx","columns":["component_type"]},{"name":"components_shared_prices_entity_fk","columns":["entity_id"]},{"name":"components_shared_prices_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_prices_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_prices","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_prices","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_points","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"point","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_page_headers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_fishkis","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_faq_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"question","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"answer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_dance_types","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_programs_programs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"short_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-06-01 07:08:44.383	f0b3536337773732f35f172416d13cac
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-05-13 21:54:23.179
2	5.0.0-02-created-document-id	2025-05-13 21:54:23.225
3	5.0.0-03-created-locale	2025-05-13 21:54:23.272
4	5.0.0-04-created-published-at	2025-05-13 21:54:23.316
5	5.0.0-05-drop-slug-fields-index	2025-05-13 21:54:23.357
6	core::5.0.0-discard-drafts	2025-05-13 21:54:23.403
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: theme_party_events; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.theme_party_events (id, document_id, title, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	v08622zimwz9rira17jebt0o	Алиса в стране чудес	alisa-v-strane-chudes	[{"type": "paragraph", "children": [{"text": "Когда волшебной девушке исполняется 14… В этот праздник Алиса пожелала", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "ярко - розовый цвет в стиле «максимализм»! Максимально много розового,", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "потому что все про любовь! Мерцание розовой фольги разбавилось крутым", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "мастер-классом по созданию своей помады. В том оттенке, который подходит", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "только ей и ее подругам! Цвет и тональность кожи, индивидуальность и", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "внутренние ощущения. Это так важно когда планируется самый долгожданный", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "День Рождения!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Любимчики Егор Крид и Серкан Боллат - символы романтики, идолы «про", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "любовь»!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Бешеная дискотека и громкий крик любимых хитов! Безумные подруги, которые", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "точно знают, какая именинница «на самом деле»! Энергетика вечеринки шалила", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "по +200 по Фаренгейту!", "type": "text"}]}]	2025-05-14 16:28:56.305	2025-05-14 16:28:56.305	\N	1	1	\N
2	v08622zimwz9rira17jebt0o	Алиса в стране чудес	alisa-v-strane-chudes	[{"type": "paragraph", "children": [{"text": "Когда волшебной девушке исполняется 14… В этот праздник Алиса пожелала", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "ярко - розовый цвет в стиле «максимализм»! Максимально много розового,", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "потому что все про любовь! Мерцание розовой фольги разбавилось крутым", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "мастер-классом по созданию своей помады. В том оттенке, который подходит", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "только ей и ее подругам! Цвет и тональность кожи, индивидуальность и", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "внутренние ощущения. Это так важно когда планируется самый долгожданный", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "День Рождения!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Любимчики Егор Крид и Серкан Боллат - символы романтики, идолы «про", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "любовь»!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Бешеная дискотека и громкий крик любимых хитов! Безумные подруги, которые", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "точно знают, какая именинница «на самом деле»! Энергетика вечеринки шалила", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "по +200 по Фаренгейту!", "type": "text"}]}]	2025-05-14 16:28:56.305	2025-05-14 16:28:56.305	2025-05-14 16:28:56.321	1	1	\N
3	x1qf248d9nfcz0uxds5soip1	Жуткая пати	zhutkaya-pati	[{"type": "paragraph", "children": [{"text": "Когда в пространство K.O.D. забегают 20 переодетых малышей - начинается", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "сумасшедшая тусовка! Но наша Вэнсдэй и не с таким справляется! Мы -", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "любители организовывать веселые вечеринки для детей от 3х лет! Атмосферно,", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "подключая всю фантазию! Дети отвечают нам своей бешеной энергией и это -", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "бесценно! Мафиози, пираты, тыковки, ведьмочки, скелетоны…Фантазия детей", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "безгранична, их умение «входить в образ» - завидный навык…Каким бы ни был", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "повод наша команда создает крутые события для тех, кто любит эмоции!", "type": "text"}]}]	2025-05-14 16:40:22.985	2025-05-14 16:40:22.985	\N	1	1	\N
4	x1qf248d9nfcz0uxds5soip1	Жуткая пати	zhutkaya-pati	[{"type": "paragraph", "children": [{"text": "Когда в пространство K.O.D. забегают 20 переодетых малышей - начинается", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "сумасшедшая тусовка! Но наша Вэнсдэй и не с таким справляется! Мы -", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "любители организовывать веселые вечеринки для детей от 3х лет! Атмосферно,", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "подключая всю фантазию! Дети отвечают нам своей бешеной энергией и это -", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "бесценно! Мафиози, пираты, тыковки, ведьмочки, скелетоны…Фантазия детей", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "безгранична, их умение «входить в образ» - завидный навык…Каким бы ни был", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "повод наша команда создает крутые события для тех, кто любит эмоции!", "type": "text"}]}]	2025-05-14 16:40:22.985	2025-05-14 16:40:22.985	2025-05-14 16:40:23.011	1	1	\N
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	bqu6xgprt1t7icfrzokx9133	plugin::users-permissions.user.me	2025-05-13 21:54:28.144	2025-05-13 21:54:28.144	2025-05-13 21:54:28.144	\N	\N	\N
2	u7ncq6kcu2ipgk7bvcqmligq	plugin::users-permissions.auth.changePassword	2025-05-13 21:54:28.144	2025-05-13 21:54:28.144	2025-05-13 21:54:28.145	\N	\N	\N
3	d36dfn0gzi3esbkict6kbktj	plugin::users-permissions.auth.callback	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	\N	\N	\N
4	bh9o04jzkxz9ptvwwxnc5s8f	plugin::users-permissions.auth.connect	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	\N	\N	\N
5	hn1mmcctd0cpvyyk0fvela2f	plugin::users-permissions.auth.forgotPassword	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	\N	\N	\N
6	oa6losw3taxn1kctx3xxuz3l	plugin::users-permissions.auth.resetPassword	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	2025-05-13 21:54:28.176	\N	\N	\N
7	mnta4ravep9z4polaeyuik9t	plugin::users-permissions.auth.register	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	2025-05-13 21:54:28.177	\N	\N	\N
8	c0l1jcl9evw0c8ierjmumb27	plugin::users-permissions.auth.emailConfirmation	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	2025-05-13 21:54:28.177	\N	\N	\N
9	kh04sk03yexfqdamdkyrwmgc	plugin::users-permissions.auth.sendEmailConfirmation	2025-05-13 21:54:28.175	2025-05-13 21:54:28.175	2025-05-13 21:54:28.177	\N	\N	\N
10	ympgqnt156dkka9nu9nebi83	api::footer.footer.find	2025-05-14 14:28:51.525	2025-05-14 14:28:51.525	2025-05-14 14:28:51.526	\N	\N	\N
11	y3fzlj41a4kr7cv13bjfps9v	api::footer.footer.update	2025-05-14 14:28:51.525	2025-05-14 14:28:51.525	2025-05-14 14:28:51.527	\N	\N	\N
12	b2ogbbn8b6ql0bl3huxaa8bf	api::footer.footer.delete	2025-05-14 14:28:51.525	2025-05-14 14:28:51.525	2025-05-14 14:28:51.531	\N	\N	\N
13	qkg9qj8iv8xpbh07ddn62z0k	api::home-page.home-page.find	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	\N	\N	\N
14	wrj8n9gawrkaxdih3c3q50m4	api::home-page.home-page.findOne	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	\N	\N	\N
15	qzpv4mvcxntnxvtk0pk0ugff	api::home-page.home-page.create	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	\N	\N	\N
16	zyivhaj7245vxsxzzsltaf5e	api::home-page.home-page.update	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	\N	\N	\N
17	py2fomifdzirgxc2d6yksuuc	api::home-page.home-page.delete	2025-05-14 14:29:34.564	2025-05-14 14:29:34.564	2025-05-14 14:29:34.565	\N	\N	\N
18	ofuoykzszsp3twjla2xyji2h	api::adult-games-page.adult-games-page.find	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.35	\N	\N	\N
19	si73wm95jkpaaf2y91zzhjzx	api::adult-games-page.adult-games-page.update	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.35	\N	\N	\N
20	or4j25ztw2gyed08ecg1njkx	api::adult-games-page.adult-games-page.delete	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.35	\N	\N	\N
21	dc8act8i3bpc10qmmqerg7hn	api::coffee-page.coffee-page.find	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.35	\N	\N	\N
22	e884vzcfh5rauhlwvuswk2si	api::coffee-page.coffee-page.update	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.351	\N	\N	\N
23	cfhjkookq3lbgs9p0ou6ujoe	api::coffee-page.coffee-page.delete	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.351	\N	\N	\N
25	vrkx0bcpsm8zlylx34y7e55j	api::contact.contact.find	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.352	\N	\N	\N
26	wwivph568oytvdqglyziup2l	api::contact.contact.findOne	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.352	\N	\N	\N
27	rp0o21iqi4klkmdfb4ytpyyj	api::contact.contact.create	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.352	\N	\N	\N
28	bslqo5vrz9b9dphho6evi92w	api::dance-page.dance-page.find	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.353	\N	\N	\N
29	bsc74l9exxq0bl11cpef8yw3	api::dance-page.dance-page.update	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.353	\N	\N	\N
30	rnajx8oodnabfglggaa1r35l	api::dance-page.dance-page.delete	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.353	\N	\N	\N
31	ph8onudxkl9t46un66urazws	api::event.event.find	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.353	\N	\N	\N
32	adpu2gyyaihdurn8o0buoem1	api::event.event.findOne	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.353	\N	\N	\N
33	ca2yy2lab8g5x6r14lyd56uk	api::event.event.create	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.353	\N	\N	\N
34	g7nod2t9shu8hn2zjabz3fo7	api::event.event.update	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.354	\N	\N	\N
35	qolpx9cgs1wkc3renctt9uyl	api::event.event.delete	2025-05-14 15:04:55.349	2025-05-14 15:04:55.349	2025-05-14 15:04:55.354	\N	\N	\N
36	swio7x8w3the1023l9k9xsac	api::personal-parties-page.personal-parties-page.find	2025-05-14 16:00:44.873	2025-05-14 16:00:44.873	2025-05-14 16:00:44.874	\N	\N	\N
37	wttlkxsvdwx5xsfmpflkrdga	api::personal-parties-page.personal-parties-page.update	2025-05-14 16:00:44.873	2025-05-14 16:00:44.873	2025-05-14 16:00:44.874	\N	\N	\N
38	xdwe2sy170hnohek0n6bvzid	api::personal-parties-page.personal-parties-page.delete	2025-05-14 16:00:44.873	2025-05-14 16:00:44.873	2025-05-14 16:00:44.874	\N	\N	\N
39	kcnqe66hk1oocbx868608ryc	api::theme-party-event.theme-party-event.find	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	\N	\N	\N
40	twui9upb2uu0q9cul1ynl78x	api::theme-party-event.theme-party-event.findOne	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	\N	\N	\N
41	yixq732nkma6363xgnhofaeq	api::theme-party-event.theme-party-event.create	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	\N	\N	\N
42	vwltc29gmr38bo0g3roh40ud	api::theme-party-event.theme-party-event.update	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	\N	\N	\N
43	c6jija26j9glq4uh6k4avy1p	api::theme-party-event.theme-party-event.delete	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	2025-05-14 16:29:23.09	\N	\N	\N
44	m5kxschfz6rlj3vwvcotarpz	api::kids-games-page.kids-games-page.find	2025-05-14 17:22:28.797	2025-05-14 17:22:28.797	2025-05-14 17:22:28.798	\N	\N	\N
45	iwch9qdzbd6hubswbscp3hsq	api::kids-games-page.kids-games-page.update	2025-05-14 17:22:28.797	2025-05-14 17:22:28.797	2025-05-14 17:22:28.798	\N	\N	\N
46	lxdt8ngh7y7kidfktvgyfxvn	api::kids-games-page.kids-games-page.delete	2025-05-14 17:22:28.797	2025-05-14 17:22:28.797	2025-05-14 17:22:28.798	\N	\N	\N
47	p52biucc0q8y5by9euf0sfm6	api::open-parties-page.open-parties-page.update	2025-05-14 17:24:46.04	2025-05-14 17:24:46.04	2025-05-14 17:24:46.04	\N	\N	\N
48	wciz8b1v2qqxw71g8b37kt1p	api::open-parties-page.open-parties-page.find	2025-05-14 17:24:46.04	2025-05-14 17:24:46.04	2025-05-14 17:24:46.04	\N	\N	\N
49	iexkg48ei8d5qc1o22hesmhk	api::open-parties-page.open-parties-page.delete	2025-05-14 17:24:46.04	2025-05-14 17:24:46.04	2025-05-14 17:24:46.041	\N	\N	\N
50	zue3hvhnmz1zl91f0u5kd0qh	api::game.game.findOne	2025-05-14 21:47:26.341	2025-05-14 21:47:26.341	2025-05-14 21:47:26.342	\N	\N	\N
51	v50q5hyhk0hcy9wahz9jwfzv	api::game.game.find	2025-05-14 21:47:26.341	2025-05-14 21:47:26.341	2025-05-14 21:47:26.341	\N	\N	\N
52	iffwhpi0vr54mstettaqgy8j	api::game.game.create	2025-05-14 21:47:26.341	2025-05-14 21:47:26.341	2025-05-14 21:47:26.342	\N	\N	\N
53	f31ehuwj2msa6mbh9941tm7x	api::game.game.update	2025-05-14 21:47:26.341	2025-05-14 21:47:26.341	2025-05-14 21:47:26.342	\N	\N	\N
54	dwoxxlrgmruh7umvqmc4y9dq	api::game.game.delete	2025-05-14 21:47:26.341	2025-05-14 21:47:26.341	2025-05-14 21:47:26.342	\N	\N	\N
58	seyx4ng7mv12nhfc109evxog	api::promo-banner.promo-banner.find	2025-05-28 18:27:24.516	2025-05-28 18:27:24.516	2025-05-28 18:27:24.516	\N	\N	\N
59	g1hhfuc3r35cqg2jrw3vr3la	api::promo-banner.promo-banner.delete	2025-05-28 18:27:24.516	2025-05-28 18:27:24.516	2025-05-28 18:27:24.517	\N	\N	\N
60	ucdy2hcevjrkhprdecbt45e6	api::promo-banner.promo-banner.update	2025-05-28 18:27:24.516	2025-05-28 18:27:24.516	2025-05-28 18:27:24.517	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	6	2	2
5	7	2	2
6	4	2	2
7	5	2	2
8	8	2	2
9	9	2	2
10	11	2	3
11	10	2	3
12	12	2	3
13	13	2	4
14	14	2	4
15	15	2	5
16	16	2	5
17	17	2	5
18	19	2	6
19	18	2	6
20	20	2	7
21	21	2	7
22	23	2	8
23	22	2	8
24	25	2	9
26	26	2	9
27	27	2	10
28	28	2	10
29	29	2	11
30	30	2	11
31	32	2	11
32	31	2	11
33	34	2	12
34	33	2	12
35	35	2	12
36	36	2	13
37	37	2	13
38	38	2	13
39	39	2	14
40	41	2	15
41	40	2	15
42	42	2	15
43	43	2	16
44	45	2	17
45	44	2	17
46	46	2	18
47	47	2	19
48	48	2	20
49	49	2	20
50	50	2	21
51	51	2	21
52	52	2	22
53	53	2	22
54	54	2	23
58	58	2	24
59	59	2	24
60	60	2	24
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	z53g04uitje8ic9un6yhod8k	Authenticated	Default role given to authenticated user.	authenticated	2025-05-13 21:54:28.068	2025-05-13 21:54:28.068	2025-05-13 21:54:28.068	\N	\N	\N
2	hwxun7ipb4qhu2k2oav1n3lm	Public	Default role given to unauthenticated user.	public	2025-05-13 21:54:28.099	2025-05-28 18:27:34.594	2025-05-13 21:54:28.099	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	nm48ifbd67ynk84s1ppmfkfb	алиса	1	/1	2025-05-14 16:26:19.453	2025-05-14 16:26:19.453	2025-05-14 16:26:19.453	1	1	\N
2	nkhngz946kvahkand13hw92k	Жуткая пати	2	/2	2025-05-14 16:39:14.539	2025-05-14 16:39:14.539	2025-05-14 16:39:14.539	1	1	\N
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 335, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 335, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 3, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 6, true);


--
-- Name: adult_games_pages_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.adult_games_pages_cmps_id_seq', 18, true);


--
-- Name: adult_games_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.adult_games_pages_id_seq', 5, true);


--
-- Name: coffee_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.coffee_pages_id_seq', 2, true);


--
-- Name: components_programs_programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_programs_programs_id_seq', 31, true);


--
-- Name: components_shared_dance_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_dance_types_id_seq', 21, true);


--
-- Name: components_shared_faq_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_faq_items_id_seq', 48, true);


--
-- Name: components_shared_fishkis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_fishkis_id_seq', 48, true);


--
-- Name: components_shared_page_headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_page_headers_id_seq', 29, true);


--
-- Name: components_shared_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_points_id_seq', 10, true);


--
-- Name: components_shared_prices_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_prices_cmps_id_seq', 14, true);


--
-- Name: components_shared_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_prices_id_seq', 4, true);


--
-- Name: components_shared_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_testimonials_id_seq', 26, true);


--
-- Name: components_shared_trainers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_shared_trainers_id_seq', 2, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contacts_id_seq', 6, true);


--
-- Name: dance_pages_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.dance_pages_cmps_id_seq', 82, true);


--
-- Name: dance_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.dance_pages_id_seq', 9, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.events_id_seq', 8, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 30, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 41, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 364, true);


--
-- Name: footers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.footers_id_seq', 5, true);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.games_id_seq', 14, true);


--
-- Name: home_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.home_pages_id_seq', 17, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: kids_games_pages_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.kids_games_pages_cmps_id_seq', 12, true);


--
-- Name: kids_games_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.kids_games_pages_id_seq', 3, true);


--
-- Name: open_parties_pages_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.open_parties_pages_cmps_id_seq', 4, true);


--
-- Name: open_parties_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.open_parties_pages_id_seq', 2, true);


--
-- Name: personal_parties_pages_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.personal_parties_pages_cmps_id_seq', 236, true);


--
-- Name: personal_parties_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.personal_parties_pages_id_seq', 12, true);


--
-- Name: promo_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.promo_banners_id_seq', 4, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 49, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 164, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: theme_party_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.theme_party_events_id_seq', 4, true);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 60, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 60, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 2, true);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: adult_games_pages_cmps adult_games_pages_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.adult_games_pages_cmps
    ADD CONSTRAINT adult_games_pages_cmps_pkey PRIMARY KEY (id);


--
-- Name: adult_games_pages adult_games_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.adult_games_pages
    ADD CONSTRAINT adult_games_pages_pkey PRIMARY KEY (id);


--
-- Name: adult_games_pages_cmps adult_games_pages_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.adult_games_pages_cmps
    ADD CONSTRAINT adult_games_pages_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: coffee_pages coffee_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.coffee_pages
    ADD CONSTRAINT coffee_pages_pkey PRIMARY KEY (id);


--
-- Name: components_programs_programs components_programs_programs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_programs_programs
    ADD CONSTRAINT components_programs_programs_pkey PRIMARY KEY (id);


--
-- Name: components_shared_dance_types components_shared_dance_types_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_dance_types
    ADD CONSTRAINT components_shared_dance_types_pkey PRIMARY KEY (id);


--
-- Name: components_shared_faq_items components_shared_faq_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_faq_items
    ADD CONSTRAINT components_shared_faq_items_pkey PRIMARY KEY (id);


--
-- Name: components_shared_fishkis components_shared_fishkis_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_fishkis
    ADD CONSTRAINT components_shared_fishkis_pkey PRIMARY KEY (id);


--
-- Name: components_shared_page_headers components_shared_page_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_page_headers
    ADD CONSTRAINT components_shared_page_headers_pkey PRIMARY KEY (id);


--
-- Name: components_shared_points components_shared_points_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_points
    ADD CONSTRAINT components_shared_points_pkey PRIMARY KEY (id);


--
-- Name: components_shared_prices_cmps components_shared_prices_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_prices_cmps
    ADD CONSTRAINT components_shared_prices_cmps_pkey PRIMARY KEY (id);


--
-- Name: components_shared_prices components_shared_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_prices
    ADD CONSTRAINT components_shared_prices_pkey PRIMARY KEY (id);


--
-- Name: components_shared_prices_cmps components_shared_prices_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_prices_cmps
    ADD CONSTRAINT components_shared_prices_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: components_shared_testimonials components_shared_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_testimonials
    ADD CONSTRAINT components_shared_testimonials_pkey PRIMARY KEY (id);


--
-- Name: components_shared_trainers components_shared_trainers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_trainers
    ADD CONSTRAINT components_shared_trainers_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: dance_pages_cmps dance_pages_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.dance_pages_cmps
    ADD CONSTRAINT dance_pages_cmps_pkey PRIMARY KEY (id);


--
-- Name: dance_pages dance_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.dance_pages
    ADD CONSTRAINT dance_pages_pkey PRIMARY KEY (id);


--
-- Name: dance_pages_cmps dance_pages_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.dance_pages_cmps
    ADD CONSTRAINT dance_pages_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: footers footers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_pkey PRIMARY KEY (id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: home_pages home_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: kids_games_pages_cmps kids_games_pages_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.kids_games_pages_cmps
    ADD CONSTRAINT kids_games_pages_cmps_pkey PRIMARY KEY (id);


--
-- Name: kids_games_pages kids_games_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.kids_games_pages
    ADD CONSTRAINT kids_games_pages_pkey PRIMARY KEY (id);


--
-- Name: kids_games_pages_cmps kids_games_pages_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.kids_games_pages_cmps
    ADD CONSTRAINT kids_games_pages_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: open_parties_pages_cmps open_parties_pages_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.open_parties_pages_cmps
    ADD CONSTRAINT open_parties_pages_cmps_pkey PRIMARY KEY (id);


--
-- Name: open_parties_pages open_parties_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.open_parties_pages
    ADD CONSTRAINT open_parties_pages_pkey PRIMARY KEY (id);


--
-- Name: open_parties_pages_cmps open_parties_pages_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.open_parties_pages_cmps
    ADD CONSTRAINT open_parties_pages_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: personal_parties_pages_cmps personal_parties_pages_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.personal_parties_pages_cmps
    ADD CONSTRAINT personal_parties_pages_cmps_pkey PRIMARY KEY (id);


--
-- Name: personal_parties_pages personal_parties_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.personal_parties_pages
    ADD CONSTRAINT personal_parties_pages_pkey PRIMARY KEY (id);


--
-- Name: personal_parties_pages_cmps personal_parties_pages_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.personal_parties_pages_cmps
    ADD CONSTRAINT personal_parties_pages_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: promo_banners promo_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.promo_banners
    ADD CONSTRAINT promo_banners_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: theme_party_events theme_party_events_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.theme_party_events
    ADD CONSTRAINT theme_party_events_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: adult_games_pages_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX adult_games_pages_component_type_idx ON public.adult_games_pages_cmps USING btree (component_type);


--
-- Name: adult_games_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX adult_games_pages_created_by_id_fk ON public.adult_games_pages USING btree (created_by_id);


--
-- Name: adult_games_pages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX adult_games_pages_documents_idx ON public.adult_games_pages USING btree (document_id, locale, published_at);


--
-- Name: adult_games_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX adult_games_pages_entity_fk ON public.adult_games_pages_cmps USING btree (entity_id);


--
-- Name: adult_games_pages_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX adult_games_pages_field_idx ON public.adult_games_pages_cmps USING btree (field);


--
-- Name: adult_games_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX adult_games_pages_updated_by_id_fk ON public.adult_games_pages USING btree (updated_by_id);


--
-- Name: coffee_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX coffee_pages_created_by_id_fk ON public.coffee_pages USING btree (created_by_id);


--
-- Name: coffee_pages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX coffee_pages_documents_idx ON public.coffee_pages USING btree (document_id, locale, published_at);


--
-- Name: coffee_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX coffee_pages_updated_by_id_fk ON public.coffee_pages USING btree (updated_by_id);


--
-- Name: components_shared_prices_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_shared_prices_component_type_idx ON public.components_shared_prices_cmps USING btree (component_type);


--
-- Name: components_shared_prices_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_shared_prices_entity_fk ON public.components_shared_prices_cmps USING btree (entity_id);


--
-- Name: components_shared_prices_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_shared_prices_field_idx ON public.components_shared_prices_cmps USING btree (field);


--
-- Name: contacts_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_created_by_id_fk ON public.contacts USING btree (created_by_id);


--
-- Name: contacts_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_documents_idx ON public.contacts USING btree (document_id, locale, published_at);


--
-- Name: contacts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contacts_updated_by_id_fk ON public.contacts USING btree (updated_by_id);


--
-- Name: dance_pages_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX dance_pages_component_type_idx ON public.dance_pages_cmps USING btree (component_type);


--
-- Name: dance_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX dance_pages_created_by_id_fk ON public.dance_pages USING btree (created_by_id);


--
-- Name: dance_pages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX dance_pages_documents_idx ON public.dance_pages USING btree (document_id, locale, published_at);


--
-- Name: dance_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX dance_pages_entity_fk ON public.dance_pages_cmps USING btree (entity_id);


--
-- Name: dance_pages_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX dance_pages_field_idx ON public.dance_pages_cmps USING btree (field);


--
-- Name: dance_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX dance_pages_updated_by_id_fk ON public.dance_pages USING btree (updated_by_id);


--
-- Name: events_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX events_created_by_id_fk ON public.events USING btree (created_by_id);


--
-- Name: events_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX events_documents_idx ON public.events USING btree (document_id, locale, published_at);


--
-- Name: events_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX events_updated_by_id_fk ON public.events USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: footers_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX footers_created_by_id_fk ON public.footers USING btree (created_by_id);


--
-- Name: footers_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX footers_documents_idx ON public.footers USING btree (document_id, locale, published_at);


--
-- Name: footers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX footers_updated_by_id_fk ON public.footers USING btree (updated_by_id);


--
-- Name: games_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX games_created_by_id_fk ON public.games USING btree (created_by_id);


--
-- Name: games_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX games_documents_idx ON public.games USING btree (document_id, locale, published_at);


--
-- Name: games_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX games_updated_by_id_fk ON public.games USING btree (updated_by_id);


--
-- Name: home_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_created_by_id_fk ON public.home_pages USING btree (created_by_id);


--
-- Name: home_pages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_documents_idx ON public.home_pages USING btree (document_id, locale, published_at);


--
-- Name: home_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX home_pages_updated_by_id_fk ON public.home_pages USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: kids_games_pages_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX kids_games_pages_component_type_idx ON public.kids_games_pages_cmps USING btree (component_type);


--
-- Name: kids_games_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX kids_games_pages_created_by_id_fk ON public.kids_games_pages USING btree (created_by_id);


--
-- Name: kids_games_pages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX kids_games_pages_documents_idx ON public.kids_games_pages USING btree (document_id, locale, published_at);


--
-- Name: kids_games_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX kids_games_pages_entity_fk ON public.kids_games_pages_cmps USING btree (entity_id);


--
-- Name: kids_games_pages_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX kids_games_pages_field_idx ON public.kids_games_pages_cmps USING btree (field);


--
-- Name: kids_games_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX kids_games_pages_updated_by_id_fk ON public.kids_games_pages USING btree (updated_by_id);


--
-- Name: open_parties_pages_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX open_parties_pages_component_type_idx ON public.open_parties_pages_cmps USING btree (component_type);


--
-- Name: open_parties_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX open_parties_pages_created_by_id_fk ON public.open_parties_pages USING btree (created_by_id);


--
-- Name: open_parties_pages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX open_parties_pages_documents_idx ON public.open_parties_pages USING btree (document_id, locale, published_at);


--
-- Name: open_parties_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX open_parties_pages_entity_fk ON public.open_parties_pages_cmps USING btree (entity_id);


--
-- Name: open_parties_pages_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX open_parties_pages_field_idx ON public.open_parties_pages_cmps USING btree (field);


--
-- Name: open_parties_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX open_parties_pages_updated_by_id_fk ON public.open_parties_pages USING btree (updated_by_id);


--
-- Name: personal_parties_pages_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX personal_parties_pages_component_type_idx ON public.personal_parties_pages_cmps USING btree (component_type);


--
-- Name: personal_parties_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX personal_parties_pages_created_by_id_fk ON public.personal_parties_pages USING btree (created_by_id);


--
-- Name: personal_parties_pages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX personal_parties_pages_documents_idx ON public.personal_parties_pages USING btree (document_id, locale, published_at);


--
-- Name: personal_parties_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX personal_parties_pages_entity_fk ON public.personal_parties_pages_cmps USING btree (entity_id);


--
-- Name: personal_parties_pages_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX personal_parties_pages_field_idx ON public.personal_parties_pages_cmps USING btree (field);


--
-- Name: personal_parties_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX personal_parties_pages_updated_by_id_fk ON public.personal_parties_pages USING btree (updated_by_id);


--
-- Name: promo_banners_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX promo_banners_created_by_id_fk ON public.promo_banners USING btree (created_by_id);


--
-- Name: promo_banners_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX promo_banners_documents_idx ON public.promo_banners USING btree (document_id, locale, published_at);


--
-- Name: promo_banners_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX promo_banners_updated_by_id_fk ON public.promo_banners USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: theme_party_events_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX theme_party_events_created_by_id_fk ON public.theme_party_events USING btree (created_by_id);


--
-- Name: theme_party_events_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX theme_party_events_documents_idx ON public.theme_party_events USING btree (document_id, locale, published_at);


--
-- Name: theme_party_events_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX theme_party_events_updated_by_id_fk ON public.theme_party_events USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: adult_games_pages adult_games_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.adult_games_pages
    ADD CONSTRAINT adult_games_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: adult_games_pages_cmps adult_games_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.adult_games_pages_cmps
    ADD CONSTRAINT adult_games_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.adult_games_pages(id) ON DELETE CASCADE;


--
-- Name: adult_games_pages adult_games_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.adult_games_pages
    ADD CONSTRAINT adult_games_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: coffee_pages coffee_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.coffee_pages
    ADD CONSTRAINT coffee_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: coffee_pages coffee_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.coffee_pages
    ADD CONSTRAINT coffee_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_shared_prices_cmps components_shared_prices_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_shared_prices_cmps
    ADD CONSTRAINT components_shared_prices_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_prices(id) ON DELETE CASCADE;


--
-- Name: contacts contacts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts contacts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dance_pages dance_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.dance_pages
    ADD CONSTRAINT dance_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dance_pages_cmps dance_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.dance_pages_cmps
    ADD CONSTRAINT dance_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.dance_pages(id) ON DELETE CASCADE;


--
-- Name: dance_pages dance_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.dance_pages
    ADD CONSTRAINT dance_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: events events_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: events events_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: footers footers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: footers footers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.footers
    ADD CONSTRAINT footers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: games games_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: games games_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: home_pages home_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: home_pages home_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.home_pages
    ADD CONSTRAINT home_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: kids_games_pages kids_games_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.kids_games_pages
    ADD CONSTRAINT kids_games_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: kids_games_pages_cmps kids_games_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.kids_games_pages_cmps
    ADD CONSTRAINT kids_games_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.kids_games_pages(id) ON DELETE CASCADE;


--
-- Name: kids_games_pages kids_games_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.kids_games_pages
    ADD CONSTRAINT kids_games_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: open_parties_pages open_parties_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.open_parties_pages
    ADD CONSTRAINT open_parties_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: open_parties_pages_cmps open_parties_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.open_parties_pages_cmps
    ADD CONSTRAINT open_parties_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.open_parties_pages(id) ON DELETE CASCADE;


--
-- Name: open_parties_pages open_parties_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.open_parties_pages
    ADD CONSTRAINT open_parties_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: personal_parties_pages personal_parties_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.personal_parties_pages
    ADD CONSTRAINT personal_parties_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: personal_parties_pages_cmps personal_parties_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.personal_parties_pages_cmps
    ADD CONSTRAINT personal_parties_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.personal_parties_pages(id) ON DELETE CASCADE;


--
-- Name: personal_parties_pages personal_parties_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.personal_parties_pages
    ADD CONSTRAINT personal_parties_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: promo_banners promo_banners_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.promo_banners
    ADD CONSTRAINT promo_banners_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: promo_banners promo_banners_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.promo_banners
    ADD CONSTRAINT promo_banners_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: theme_party_events theme_party_events_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.theme_party_events
    ADD CONSTRAINT theme_party_events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: theme_party_events theme_party_events_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.theme_party_events
    ADD CONSTRAINT theme_party_events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO strapi;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO strapi;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO strapi;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO strapi;


--
-- PostgreSQL database dump complete
--

