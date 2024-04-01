//
//  User Profile.swift
//  Elite Software Solution POC
//
//  Created by Apple on 01/04/24.
//



import Foundation
// MARK: - UserProfile_Base
struct UserProfile_Base : Codable,Hashable {
    let response_code : Int?
    let message : String?
    let profiles : [Profiles]?

    enum CodingKeys: String, CodingKey {

        case response_code = "response_code"
        case message = "message"
        case profiles = "profiles"
    }
}
//MARK: - Profiles
struct Profiles : Codable,Hashable{
    let profile_id : String?
    let profile_first_name : String?
    let profile_last_name : String?
    let profile_phone_number : String?
    let profile_email : String?
    let profile_job_title : String?
    let profile_company_name : String?
    let profile_web_site : String?
    let profile_image_name : String?
    let profile_is_deleted : Bool?
    let collect_prospect_info : Bool?
    let prospect_count : String?
    let social_media : [Social_media]?
    let user_profile_theme : User_profile_theme?

    enum CodingKeys: String, CodingKey {

        case profile_id = "profile_id"
        case profile_first_name = "profile_first_name"
        case profile_last_name = "profile_last_name"
        case profile_phone_number = "profile_phone_number"
        case profile_email = "profile_email"
        case profile_job_title = "profile_job_title"
        case profile_company_name = "profile_company_name"
        case profile_web_site = "profile_web_site"
        case profile_image_name = "profile_image_name"
        case profile_is_deleted = "profile_is_deleted"
        case collect_prospect_info = "collect_prospect_info"
        case prospect_count = "prospect_count"
        case social_media = "social_media"
        case user_profile_theme = "user_profile_theme"
    }

}
//MARK: - Social_media
struct Social_media : Codable,Hashable {
    let social_media_type : String?
    let value : String?

    enum CodingKeys: String, CodingKey {

        case social_media_type = "social_media_type"
        case value = "value"
    }
}
//MARK: - User_profile_theme
struct User_profile_theme : Codable,Hashable {
    let user_profile_theme_id : Int?
    let user_profile_theme_color : String?
    let apply_color_link_icon : Bool?
    let apply_color_qr_code : Bool?

    enum CodingKeys: String, CodingKey {

        case user_profile_theme_id = "user_profile_theme_id"
        case user_profile_theme_color = "user_profile_theme_color"
        case apply_color_link_icon = "apply_color_link_icon"
        case apply_color_qr_code = "apply_color_qr_code"
    }
}

