package com.enzawell-test-project.stepdefinitions;

import com..utils.ElementUtils;
import org.junit.Assert;
import com..driverfactory.DriverFactory;
import com.enzawell-test-project.pages.UploadNewCandidateProfilePage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
public class UploadNewCandidateProfile extends DriverFactory {
UploadNewCandidateProfilePage uploadNewCandidateProfilePage = new UploadNewCandidateProfilePage(driver);
@Given("the user is on the Profile section")
public void the_user_is_on_the_profile_section() {
uploadNewCandidateProfilePage.navigateToProfileSection();
}
@When("the user clicks on the upload icon")
public void the_user_clicks_on_the_upload_icon() {
uploadNewCandidateProfilePage.clickUploadIcon();
}
@And("the user browses and selects a valid candidate profile file")
public void the_user_browses_and_selects_a_valid_candidate_profile_file() {
uploadNewCandidateProfilePage.selectValidCandidateProfileFile();
}
@And("the user clicks on the Upload button")
public void the_user_clicks_on_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@And("the user waits for the upload process to complete")
public void the_user_waits_for_the_upload_process_to_complete() {
uploadNewCandidateProfilePage.waitForUploadToComplete();
}
@Then("the user should see a success confirmation message")
public void the_user_should_see_a_success_confirmation_message() {
uploadNewCandidateProfilePage.isSuccessMessageDisplayed();
}
@And("the user browses and selects a valid candidate profile file of {string}")
public void the_user_browses_and_selects_a_valid_candidate_profile_file_of(String fileSize) {
uploadNewCandidateProfilePage.selectCandidateProfileFileOfSize(fileSize);
}
@And("the user waits for the upload to complete and confirms success")
public void the_user_waits_for_the_upload_to_complete_and_confirms_success() {
uploadNewCandidateProfilePage.confirmUploadSuccess();
}
@And("the user browses and selects a valid candidate profile file with a long filename")
public void the_user_browses_and_selects_a_valid_candidate_profile_file_with_a_long_filename() {
uploadNewCandidateProfilePage.selectCandidateProfileFileWithLongFilename();
}
@And("the user browses and selects a valid candidate profile file in {string} format")
public void the_user_browses_and_selects_a_valid_candidate_profile_file_in_format(String fileFormat) {
uploadNewCandidateProfilePage.selectCandidateProfileFileInFormat(fileFormat);
}
@And("the user browses and selects a valid candidate profile file with UTF-8 encoding")
public void the_user_browses_and_selects_a_valid_candidate_profile_file_with_utf8_encoding() {
uploadNewCandidateProfilePage.selectCandidateProfileFileWithUTF8Encoding();
}
@And("the user browses and selects a valid candidate profile file with a {string} extension")
public void the_user_browses_and_selects_a_valid_candidate_profile_file_with_extension(String fileExtension) {
uploadNewCandidateProfilePage.selectCandidateProfileFileWithExtension(fileExtension);
}
@And("the user browses and selects a valid candidate profile file with text in Spanish")
public void the_user_browses_and_selects_a_valid_candidate_profile_file_with_text_in_spanish() {
uploadNewCandidateProfilePage.selectCandidateProfileFileWithSpanishText();
}
@When("I browse and select an unsupported file type {string}")
public void i_browse_and_select_an_unsupported_file_type(String fileType) {
uploadNewCandidateProfilePage.selectUnsupportedFileType(fileType);
}
@Then("an error message is displayed indicating the file type is not supported")
public void an_error_message_is_displayed_indicating_the_file_type_is_not_supported() {
uploadNewCandidateProfilePage.isUnsupportedFileTypeErrorDisplayed();
}
@When("the user browses and selects a file that exceeds the size limit")
public void the_user_browses_and_selects_a_file_that_exceeds_the_size_limit() {
uploadNewCandidateProfilePage.selectFileExceedingSizeLimit();
}
@Then("an error message is displayed indicating the file exceeds the maximum size limit")
public void an_error_message_is_displayed_indicating_the_file_exceeds_the_maximum_size_limit() {
uploadNewCandidateProfilePage.isFileSizeExceededErrorDisplayed();
}
@When("the user does not select any file")
public void the_user_does_not_select_any_file() {
uploadNewCandidateProfilePage.doesNotSelectAnyFile();
}
@Then("an error message is displayed indicating that no file was selected")
public void an_error_message_is_displayed_indicating_that_no_file_was_selected() {
uploadNewCandidateProfilePage.isNoFileSelectedErrorDisplayed();
}
@When("the user simulates a network failure during the upload process")
public void the_user_simulates_a_network_failure_during_the_upload_process() {
uploadNewCandidateProfilePage.simulateNetworkFailure();
}
@Then("an error message is displayed indicating a network failure occurred")
public void an_error_message_is_displayed_indicating_a_network_failure_occurred() {
uploadNewCandidateProfilePage.isNetworkFailureErrorDisplayed();
}
@When("the upload process times out")
public void the_upload_process_times_out() {
uploadNewCandidateProfilePage.simulateUploadTimeout();
}
@Then("an error message should be displayed indicating the upload process timed out")
public void an_error_message_should_be_displayed_indicating_the_upload_process_timed_out() {
uploadNewCandidateProfilePage.isUploadTimeoutErrorDisplayed();
}
@When("the user browses and selects a corrupted candidate profile file")
public void the_user_browses_and_selects_a_corrupted_candidate_profile_file() {
uploadNewCandidateProfilePage.selectCorruptedCandidateProfileFile();
}
@Then("an error message should be displayed indicating the file is corrupted and cannot be uploaded")
public void an_error_message_should_be_displayed_indicating_the_file_is_corrupted_and_cannot_be_uploaded() {
uploadNewCandidateProfilePage.isCorruptedFileErrorDisplayed();
}

@Given("the user browses selects a valid candidate profile file named {string}")
public void the_user_browses_selects_a_valid_candidate_profile_file_named(String fileName) {
uploadNewCandidateProfilePage.browseAndSelectFile(fileName);
}
@Given("the user browses selects a valid candidate profile file with spaces in the filename")
public void the_user_browses_selects_a_valid_candidate_profile_file_with_spaces_in_the_filename() {
uploadNewCandidateProfilePage.browseAndSelectFileWithSpaces();
}
@When("the upload process does not initiate")
public void the_upload_process_does_not_initiate() {
uploadNewCandidateProfilePage.isUploadInitiated();
}
@Then("the system should display an error message indicating the file type is not supported")
public void the_system_should_display_an_error_message_indicating_the_file_type_is_not_supported() {
uploadNewCandidateProfilePage.isErrorMessageDisplayed("file type is not supported");
}
@When("the user should see an error message indicating that no file was selected")
public void the_user_should_see_an_error_message_indicating_that_no_file_was_selected() {
uploadNewCandidateProfilePage.isErrorMessageDisplayed("no file was selected");
}
@When("the user browses selects the {string}")
public void the_user_browses_selects_the(String fileName) {
uploadNewCandidateProfilePage.browseAndSelectFile(fileName);
}
@Then("the upload icon is visible clickable")
public void the_upload_icon_is_visible_clickable() {
uploadNewCandidateProfilePage.isUploadIconVisibleAndClickable();
}
@Then("the user should wait for the upload to complete confirm success")
public void the_user_should_wait_for_the_upload_to_complete_confirm_success() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@When("I clickElement on the upload button")
public void i_click_on_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@When("the file selection dialog opens")
public void the_file_selection_dialog_opens() {
uploadNewCandidateProfilePage.isFileSelectionDialogOpen();
}
@When("the user waits for the upload to complete confirm success")
public void the_user_waits_for_the_upload_to_complete_confirm_success() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@When("the user browses selects a valid candidate profile file with utf-8 encoding")
public void the_user_browses_selects_a_valid_candidate_profile_file_with_utf_8_encoding() {
uploadNewCandidateProfilePage.browseAndSelectFileWithUtf8Encoding();
}
@When("a network failure occurs during the upload process")
public void a_network_failure_occurs_during_the_upload_process() {
uploadNewCandidateProfilePage.simulateNetworkFailure();
}
@When("the recruiter clicks on the upload icon")
public void the_recruiter_clicks_on_the_upload_icon() {
uploadNewCandidateProfilePage.clickUploadIcon();
}
@Then("the selected corrupted file is displayed in the upload dialog")
public void the_selected_corrupted_file_is_displayed_in_the_upload_dialog() {
uploadNewCandidateProfilePage.isCorruptedFileDisplayed();
}
@When("the user browses selects a valid candidate profile file with special characters in the filename")
public void the_user_browses_selects_a_valid_candidate_profile_file_with_special_characters_in_the_filename() {
uploadNewCandidateProfilePage.browseAndSelectFileWithSpecialCharacters();
}
@When("the recruiter browses selects a file that exceeds the size limit")
public void the_recruiter_browses_selects_a_file_that_exceeds_the_size_limit() {
uploadNewCandidateProfilePage.browseAndSelectFileExceedingSizeLimit();
}
@When("the recruiter browses selects a valid candidate profile file with text in spanish")
public void the_recruiter_browses_selects_a_valid_candidate_profile_file_with_text_in_spanish() {
uploadNewCandidateProfilePage.browseAndSelectFileWithSpanishText();
}
@Then("the upload process initiates without errors")
public void the_upload_process_initiates_without_errors() {
uploadNewCandidateProfilePage.isUploadInitiatedWithoutErrors();
}
@When("no file is selected in the upload dialog")
public void no_file_is_selected_in_the_upload_dialog() {
uploadNewCandidateProfilePage.isFileSelected();
}
@Then("an error message is displayed indicating the upload process timed out")
public void an_error_message_is_displayed_indicating_the_upload_process_timed_out() {
uploadNewCandidateProfilePage.isErrorMessageDisplayed("upload process timed out");
}
@When("the user browses selects an unsupported file type {string}")
public void the_user_browses_selects_an_unsupported_file_type(String fileType) {
uploadNewCandidateProfilePage.browseAndSelectUnsupportedFileType(fileType);
}
@When("the recruiter waits for the upload process to complete")
public void the_recruiter_waits_for_the_upload_process_to_complete() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@When("I wait for the upload process to complete")
public void i_wait_for_the_upload_process_to_complete() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@When("the user browses selects the valid candidate profile file with special characters in the filename")
public void the_user_browses_selects_the_valid_candidate_profile_file_with_special_characters_in_the_filename() {
uploadNewCandidateProfilePage.browseAndSelectFileWithSpecialCharacters();
}
@Then("I observe the system's response")
public void i_observe_the_systems_response() {
uploadNewCandidateProfilePage.isSystemResponseAsExpected();
}
@When("the recruiter browses selects a valid candidate profile file with a long filename")
public void the_recruiter_browses_selects_a_valid_candidate_profile_file_with_a_long_filename() {
uploadNewCandidateProfilePage.browseAndSelectFileWithLongFilename();
}
@Then("the user should see a confirmation message")
public void the_user_should_see_a_confirmation_message() {
uploadNewCandidateProfilePage.isConfirmationMessageDisplayed();
}
@Then("a success confirmation message should be displayed to the user")
public void a_success_confirmation_message_should_be_displayed_to_the_user() {
uploadNewCandidateProfilePage.isSuccessConfirmationMessageDisplayed();
}
@Then("the upload process does not complete successfully")
public void the_upload_process_does_not_complete_successfully() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@When("the recruiter clicks on the upload button")
public void the_recruiter_clicks_on_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@Then("the upload process should complete")
public void the_upload_process_should_complete() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@Then("an error message is displayed indicating the file is corrupted cannot be uploaded")
public void an_error_message_is_displayed_indicating_the_file_is_corrupted_cannot_be_uploaded() {
uploadNewCandidateProfilePage.isErrorMessageDisplayed("file is corrupted");
}
@When("the recruiter browses selects a valid candidate profile file in .txt format")
public void the_recruiter_browses_selects_a_valid_candidate_profile_file_in_txt_format() {
uploadNewCandidateProfilePage.browseAndSelectFileInTxtFormat();
}
@When("the user browses selects a valid candidate profile file of 2mb")
public void the_user_browses_selects_a_valid_candidate_profile_file_of_2mb() {
uploadNewCandidateProfilePage.browseAndSelectFileOf2MB();
}
@When("the user simulates a timeout during the upload process")
public void the_user_simulates_a_timeout_during_the_upload_process() {
uploadNewCandidateProfilePage.simulateTimeout();
}
@When("the recruiter browses selects a valid candidate profile file")
public void the_recruiter_browses_selects_a_valid_candidate_profile_file() {
uploadNewCandidateProfilePage.browseAndSelectValidFile();
}
@Then("the second profile is uploaded successfully with a confirmation message")
public void the_second_profile_is_uploaded_successfully_with_a_confirmation_message() {
uploadNewCandidateProfilePage.isSecondProfileUploadSuccessful();
}
@When("the admin clicks on the upload button")
public void the_admin_clicks_on_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@When("the recruiter browses selects a valid candidate profile file with special characters in the filename")
public void the_recruiter_browses_selects_a_valid_candidate_profile_file_with_special_characters_in_the_filename() {
uploadNewCandidateProfilePage.browseAndSelectFileWithSpecialCharacters();
}
@Then("the network failure occurs during the upload process")
public void the_network_failure_occurs_during_the_upload_process() {
uploadNewCandidateProfilePage.simulateNetworkFailure();
}
@Then("the upload process should not initiate")
public void the_upload_process_should_not_initiate() {
uploadNewCandidateProfilePage.isUploadInitiated();
}
@Then("the upload icon remains functional after the first upload")
public void the_upload_icon_remains_functional_after_the_first_upload() {
uploadNewCandidateProfilePage.isUploadIconFunctional();
}
@Then("the upload process should not complete successfully")
public void the_upload_process_should_not_complete_successfully() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@Then("the upload process should complete successfully")
public void the_upload_process_should_complete_successfully() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@When("the recruiter clicks on the upload (cloud) icon")
public void the_recruiter_clicks_on_the_upload_cloud_icon() {
uploadNewCandidateProfilePage.clickUploadCloudIcon();
}
@Then("a success confirmation message is displayed to the user")
public void a_success_confirmation_message_is_displayed_to_the_user() {
uploadNewCandidateProfilePage.isSuccessConfirmationMessageDisplayed();
}
@Then("the first profile is uploaded successfully with a confirmation message")
public void the_first_profile_is_uploaded_successfully_with_a_confirmation_message() {
uploadNewCandidateProfilePage.isFirstProfileUploadSuccessful();
}
@Then("the upload process completes successfully")
public void the_upload_process_completes_successfully() {
uploadNewCandidateProfilePage.isUploadSuccessful();
}
@Then("the system should display an error message indicating a network failure occurred")
public void the_system_should_display_an_error_message_indicating_a_network_failure_occurred() {
uploadNewCandidateProfilePage.isErrorMessageDisplayed("network failure occurred");
}
@When("I clickElement on the upload (cloud) icon")
public void i_click_on_the_upload_cloud_icon() {
uploadNewCandidateProfilePage.clickUploadCloudIcon();
}
@When("the user clicks the upload button")
public void the_user_clicks_the_upload_button() {
uploadNewCandidateProfilePage.clickUploadButton();
}
@When("the user browses selects a valid candidate profile file with a .doc extension")
public void the_user_browses_selects_a_valid_candidate_profile_file_with_a_doc_extension() {
uploadNewCandidateProfilePage.browseAndSelectFileWithDocExtension();
}
}