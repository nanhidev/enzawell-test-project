
@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

Background: 
  Given the user is on the Profile section

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then the user should see a success confirmation message

Examples:
  | <file_type> |
  | PDF         |
  | DOCX        |


  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects the "<candidate_profile>"
    And the user clicks the Upload button
    And the user waits for the upload to complete and confirms success
    Then the user should see a confirmation message

    Examples:
      | candidate_profile             |
      | first_valid_candidate_profile  |
      | second_valid_candidate_profile |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file of <file_size>
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then the user should see a success confirmation message

Examples:
  | file_size |
  | 2MB       |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the recruiter clicks on the upload icon
  And the recruiter browses and selects a valid candidate profile file with a long filename
  And the recruiter clicks on the Upload button
  Then the upload process initiates without errors
  And a success confirmation message is displayed to the user

Examples:
  | filename                                            |
  | Candidate_Profile_2023_John_Doe_Very_Long_Filename.pdf |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file in <file_format> format
    And the user clicks on the Upload button
    Then the upload process completes successfully
    And a success confirmation message is displayed to the user

    Examples:
      | file_format |
      | .txt        |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    Given the user clicks on the upload icon
    When the user browses and selects a valid candidate profile file with UTF-8 encoding
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message is displayed to the user

    Examples:
      | file_name               |
      | valid_candidate_profile  |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a valid candidate profile file with a .doc extension
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message is displayed to the user

  Examples:
    | file_extension |
    | .doc          |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file with text in Spanish
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message is displayed to the user

    Examples: 
      | candidate_profile_file |
      | valid_candidate_profile_with_spanish_text |

  @unsupported-file-upload
  Scenario Outline: Upload New Candidate Profile
    When I click on the upload icon
    And I browse and select an unsupported file type <file_type>
    And I click on the Upload button
    Then an error message is displayed indicating the file type is not supported
    And the upload process does not initiate

    Examples:
      | file_type |
      | .exe      |

  @file_size_exceeded
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a file that exceeds the size limit
    And the user clicks on the Upload button
    Then an error message is displayed indicating the file exceeds the maximum size limit
    And the upload process does not initiate

    Examples:
      | file       |
      | file_6MB  |

@error-message
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user does not select any file
  And the user clicks on the Upload button
  Then an error message is displayed indicating that no file was selected
  And the upload process does not initiate

  Examples:
    |     |
    |     |

  @network_failure
  Scenario Outline: Upload New Candidate Profile
    Given the admin clicks on the upload (cloud) icon
    When the admin browses and selects a valid candidate profile file
    And the admin clicks on the Upload button
    And the network failure occurs during the upload process
    Then an error message is displayed indicating a network failure occurred
    And the upload process does not complete successfully

    Examples:
      | <file> |
      | valid_candidate_profile.pdf |

@upload-timeout
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file
  And the user clicks the Upload button
  And the upload process times out
  Then an error message should be displayed indicating the upload process timed out
  And the upload process should not complete successfully

  Examples:
    | <upload_icon> | <candidate_profile_file> |
    | upload icon   | valid candidate profile file |

@corrupted-file-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a corrupted candidate profile file
  And the user clicks on the Upload button
  Then an error message should be displayed indicating the file is corrupted and cannot be uploaded
  And the upload process should not initiate

Examples:
  | corrupted_file       |
  | corrupted_candidate_file |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file with special characters in the filename
  And the user clicks on the Upload button
  Then the upload process initiates without errors
  And a success confirmation message is displayed to the user

Examples:
  | filename                |
  | John_Doe@2023.pdf      |

@valid-candidate-upload
Scenario Outline: Upload New Candidate Profile
  When I click on the upload (cloud) icon
  And I browse and select a valid candidate profile file with a very short filename
  And I click on the Upload button
  Then I wait for the upload process to complete
  And I observe the system's response

Examples:
  | filename  |
  | A.pdf     |

@upload-valid-candidate-profile
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a valid candidate profile file with spaces in the filename
  And the user clicks on the Upload button
  Then the upload process should complete
  And a success confirmation message should be displayed to the user

Examples:
  | filename                   |
  | John Doe Profile.pdf      |

  @successful-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message is displayed to the user

  Examples:
    | valid_candidate_profile_file |
    | candidate_profile.pdf        |
    | candidate_profile.docx       |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects the "<candidate_profile>"
    And the user clicks on the Upload button
    And the user waits for the upload to complete and confirms success
    Then the first profile is uploaded successfully with a confirmation message
    And the upload icon remains functional after the first upload
    When the user clicks on the upload (cloud) icon
    And the user browses and selects the "<candidate_profile>"
    And the user clicks on the Upload button
    And the user waits for the upload to complete and confirms success
    Then the second profile is uploaded successfully with a confirmation message
    And both profiles are listed in the Profile section

    Examples:
      | candidate_profile       |
      | valid_candidate1.xlsx   |
      | valid_candidate2.docx   |

@valid-profile-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file of <file_size>
  And the user clicks on the Upload button
  Then the upload process should complete
  And a success confirmation message should be displayed to the user

Examples:
  | file_size |
  | 2MB       |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a valid candidate profile file with a long filename
  And the user clicks on the Upload button
  Then the upload process should complete without errors
  And a success confirmation message should be displayed to the user

  Examples:
    | filename                                         |
    | Candidate_Profile_2023_John_Doe_Very_Long_Filename.pdf |

  @upload_candidate_profile
  Scenario Outline: Upload New Candidate Profile
    When the recruiter clicks on the upload icon
    And the recruiter browses and selects a valid candidate profile file in .txt format
    And the recruiter clicks on the Upload button
    And the recruiter waits for the upload process to complete
    Then a success confirmation message is displayed to the user

    Examples:
      | candidate_profile_file         |
      | valid_candidate_profile.txt    |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file with UTF-8 encoding
    And the user clicks the Upload button
    Then the upload process should complete
    And a success confirmation message should be displayed to the user

  Examples:
    | file_name                     |
    | valid_candidate_profile_utf8  |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file with a <file_extension> extension
    And the user clicks on the Upload button
    Then the upload process should complete successfully
    And a success confirmation message is displayed to the user

  Examples:
    | file_extension |
    | .doc           |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the recruiter clicks on the upload (cloud) icon
  And the recruiter browses and selects a valid candidate profile file with text in Spanish
  And the recruiter clicks on the Upload button
  Then the upload process should complete
  And a success confirmation message should be displayed to the user

Examples:
  | file_name               |
  | candidate_profile_es.pdf |

  @unsupported-file-upload
  Scenario Outline: Upload New Candidate Profile
    Given the user clicks on the upload icon
    When the user browses and selects an unsupported file type <file_type>
    And the user clicks on the Upload button
    Then an error message is displayed indicating the file type is not supported
    And the upload process does not initiate

    Examples:
      | file_type |
      | .exe      |

  @error_message_file_size_exceeded
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a file that exceeds the size limit
    And the user clicks on the Upload button
    Then an error message is displayed indicating the file exceeds the maximum size limit
    And the upload process does not initiate

  Examples:
    | file_size |
    | 6MB       |

  @file-upload-error
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user does not select any file
    And the user clicks on the Upload button
    Then the user should see an error message indicating that no file was selected
    And the upload process should not initiate

  Examples:
    | No input data required |

  @network_failure
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file
    And the user clicks on the Upload button
    And the user simulates a network failure during the upload process
    Then the system should display an error message indicating a network failure occurred
    And the upload process should not complete successfully

    Examples:
      | <file> |
      | valid_candidate_profile.pdf |

  @timeout_upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file
    And the user clicks on the Upload button
    And the user simulates a timeout during the upload process
    Then an error message is displayed indicating the upload process timed out
    And the upload process does not complete successfully

    Examples:
      | <file> |
      | valid_candidate_profile.pdf |

@corrupted-file-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a corrupted candidate profile file
  And the user clicks on the Upload button
  Then an error message is displayed indicating the file is corrupted and cannot be uploaded
  And the upload process does not initiate

Examples:
  | file                  |
  | corrupted_file.pdf    |

@valid-file-upload
Scenario Outline: Upload New Candidate Profile
  When the recruiter clicks on the upload icon
  And the recruiter browses and selects a valid candidate profile file with special characters in the filename
  And the recruiter clicks on the Upload button
  Then the upload process should complete without errors
  And a success confirmation message should be displayed to the user

Examples:
  | filename               |
  | John_Doe@2023.pdf     |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a valid candidate profile file named <file_name>
  And the user clicks on the Upload button
  Then the upload process should complete successfully
  And the user should see a success confirmation message

  Examples:
    | file_name |
    | A.pdf     |

@upload_valid_candidate_profile
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a valid candidate profile file with spaces in the filename
  And the user clicks on the Upload button
  Then the upload process should complete
  And a success confirmation message is displayed to the user

  Examples:
    | filename                      |
    | John Doe Profile.pdf         |

@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the recruiter is in the Profile section

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the recruiter clicks on the upload (cloud) icon
    And the recruiter browses and selects a valid candidate profile file
    And the recruiter clicks on the Upload button
    And the recruiter waits for the upload process to complete
    Then a success confirmation message is displayed to the user

    Examples:
      | candidate profile file |
      | valid_profile.pdf      |
      | valid_profile.docx     |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the user is on the Profile section

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    Given the user is on the Profile section
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file of 2MB
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message is displayed to the user

    Examples:
      | file_size |
      | 2MB       |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the user is on the Profile section

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects the "<candidate_profile>" file
    And the user clicks on the Upload button
    Then the user should wait for the upload to complete and confirm success

    Examples:
      | candidate_profile        |
      | first_valid_profile.docx |
      | second_valid_profile.docx |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the user is on the Profile section

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file with a long filename
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then the user should see a success confirmation message

  Examples:
    | filename                                           |
    | Candidate_Profile_2023_John_Doe_Very_Long_Filename.pdf |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the user is on the Profile section

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file in .txt format
    And the user clicks the Upload button
    Then the upload process should complete
    And a success confirmation message is displayed to the user

    Examples:
      | candidate_profile_file |
      | valid_candidate.txt     |


Feature: UploadNewCandidateProfile @feature_upload_new_candidate_profile

Background: 
  Given the user is on the Profile section

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file with a .doc extension
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then a success confirmation message is displayed to the user

Examples:
  | file_extension |
  | .doc          |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

Background: 
  Given the user is on the Profile Section

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file with text in Spanish
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then a success confirmation message should be displayed to the user

Examples:
  | file_name                     |
  | valid_candidate_profile_spanish |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

Background: 
  Given the user is on the Profile section

@valid_candidate_profile_upload
Scenario Outline: Upload New Candidate Profile
  When I click on the upload (cloud) icon
  And I browse and select a valid candidate profile file with UTF-8 encoding
  And I click on the Upload button
  And I wait for the upload process to complete
  Then a success confirmation message is displayed to the user

Examples:
  | File                        |
  | candidate_profile_utf8.txt  |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the user is on the Profile section

  @unsupported-file-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects an unsupported file type <unsupported_file_type>
    And the user clicks on the Upload button
    Then the system should display an error message indicating the file type is not supported
    And the upload process does not initiate

  Examples:
    | unsupported_file_type |
    | .exe                  |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

Background: 
  Given the recruiter is in the Profile section

@file_size_exceed
Scenario Outline: Upload New Candidate Profile
  When the recruiter clicks on the upload (cloud) icon
  And the recruiter browses and selects a file that exceeds the size limit
  And the recruiter clicks on the Upload button
  Then an error message is displayed indicating the file exceeds the maximum size limit
  And the upload process does not initiate

Examples:
  | file_size |
  | 6MB       |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

Background: 
  Given the user is on the Profile section

@error-message
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the file selection dialog opens
  And no file is selected in the upload dialog
  And the user clicks on the Upload button
  Then an error message is displayed indicating that no file was selected
  And the upload process does not initiate

  Examples:
    |    |
    |    |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the user is on the Profile section

  @network_failure
  Scenario Outline: Upload New Candidate Profile
    Given the user clicks on the upload icon
    When the user browses and selects a valid candidate profile file
    And the user clicks on the Upload button
    And the user simulates a network failure during the upload process
    Then an error message is displayed indicating a network failure occurred
    And the upload process does not complete successfully

    Examples:
      | valid_candidate_profile_file |
      | candidate_profile.pdf        |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

Background: 
  Given the user is on the Profile section

@timeout-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file
  And the user clicks on the Upload button
  And the upload process times out
  Then an error message should be displayed indicating the upload process timed out

Examples:
  | <file> |
  | valid_candidate_profile.pdf |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the user is on the Profile section

  @corrupted_file_upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a corrupted candidate profile file
    And the user clicks on the Upload button
    Then an error message is displayed indicating the file is corrupted and cannot be uploaded
    And the upload process does not initiate

    Examples:
      | corrupted_file          |
      | corrupted_file_1.docx   |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

  Background: 
    Given the user is logged in as a recruiter
    And the user is on the Profile section

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file with a very short filename
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message is displayed to the user

    Examples:
      | filename |
      | A.pdf    |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

Background: 
  Given the user is on the Profile section

@upload_valid_candidate_profile
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects the valid candidate profile file with special characters in the filename
  And the user clicks on the Upload button
  Then the upload process should complete successfully
  And a success confirmation message should be displayed to the user

  Examples:
    | filename               |
    | John_Doe@2023.pdf     |


@feature_upload_new_candidate_profile
Feature: UploadNewCandidateProfile

Background: 
  Given the user is on the Profile section

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a valid candidate profile file with spaces in the filename
  And the user clicks on the Upload button
  Then the upload process should complete successfully
  And a success confirmation message should be displayed to the user

Examples:
  | filename                     |
  | John Doe Profile.pdf        |


  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a valid candidate profile file
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message is displayed to the user

    Examples:
      | candidate_profile_file          |
      | valid_candidate_profile.pdf     |
      | valid_candidate_profile.docx    |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects the "<candidate_profile>" file
    And the user clicks on the Upload button
    Then the user waits for the upload to complete and confirm success

    Examples:
      | candidate_profile           |
      | first_valid_candidate_file  |
      | second_valid_candidate_file |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects a valid candidate profile file of 2MB
    And the user clicks on the Upload button
    Then the upload process should complete successfully
    And a success confirmation message should be displayed to the user

    Examples:
      | file_size |
      | 2MB       |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file with a long filename
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then a success confirmation message is displayed to the user

Examples:
  | filename                                |
  | Candidate_Profile_2023_John_Doe_Very_Long_Filename.pdf |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file in .txt format
  And the user clicks on the Upload button
  Then the upload process should complete without errors
  And a success confirmation message should be displayed to the user

Examples:
  | file_name         |
  | valid_candidate.txt |

  @valid-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a valid candidate profile file with UTF-8 encoding
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message is displayed to the user

  Examples:
    | candidate_profile_file |
    | valid_candidate_profile.txt |

@valid-file-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file with a .doc extension
  And the user clicks on the Upload button
  Then the upload process initiates without errors
  And a success confirmation message is displayed to the user

Examples:
  | file_extension |
  | .doc          |

  @upload_candidate_profile
  Scenario Outline: Upload New Candidate Profile
    Given the user clicks on the upload icon
    When the user browses and selects a valid candidate profile file with text in Spanish
    And the user clicks on the Upload button
    And the user waits for the upload process to complete
    Then a success confirmation message should be displayed to the user

    Examples:
      | file_name                     |
      | valid_candidate_profile_spanish |

  @unsupported-file-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload icon
    And the user browses and selects an unsupported file type <file_type>
    And the user clicks on the Upload button
    Then an error message is displayed indicating the file type is not supported
    And the upload process does not initiate

    Examples:
      | file_type |
      | .exe      |

  @exceed_file_size
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a file that exceeds the size limit
    And the user clicks on the Upload button
    Then an error message is displayed indicating the file exceeds the maximum size limit
    And the upload process does not initiate

    Examples:
      | file_size |
      | 6MB       |

@error_no_file_selected
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user does not select any file
  And the user clicks on the Upload button
  Then an error message should be displayed indicating that no file was selected
  And the upload process does not initiate

  Examples:
    |   |
    |   |

@network-failure-upload
Scenario Outline: Upload New Candidate Profile
  Given the user clicks on the upload (cloud) icon
  When the user browses and selects a valid candidate profile file
  And the user clicks the Upload button
  And a network failure occurs during the upload process
  Then an error message is displayed indicating a network failure occurred

  Examples:
    | valid_candidate_profile_file |
    | valid_profile.pdf            |

@timeout-error
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file
  And the user clicks the Upload button
  And the upload process times out
  Then an error message should be displayed indicating the upload process timed out
  And the upload process should not complete successfully

  Examples:
    | <file> |
    | valid_candidate_profile.pdf |

  @corrupted-file-upload
  Scenario Outline: Upload New Candidate Profile
    When the user clicks on the upload (cloud) icon
    And the user browses and selects a corrupted candidate profile file
    And the user clicks on the Upload button
    Then an error message is displayed indicating the file is corrupted and cannot be uploaded
    And the upload process does not initiate

  Examples:
    | CorruptedFile         |
    | corrupted_file.txt    |

  @valid-profile-section
  Scenario Outline: Navigate to Profile Section
    Given the user navigates to the Profile section from the side navigation
    Then the Profile section is displayed
    And the upload icon is visible and clickable

  Examples:
    | ProfileSection |
    | Profile        |

  @file-selection-dialog
  Scenario Outline: Open File Selection Dialog
    When the user clicks on the upload (cloud) icon
    Then the file selection dialog opens

  Examples:
    | UploadIcon |
    | cloud_icon |

  @selected-corrupted-file
  Scenario Outline: Display Selected Corrupted File
    When the user browses and selects a corrupted candidate profile file
    Then the selected corrupted file is displayed in the upload dialog

  Examples:
    | CorruptedFile         |
    | corrupted_file.txt    |

@valid-candidate-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file with special characters in the filename
  And the user clicks on the Upload button
  Then the upload process should complete without errors
  And a success confirmation message should be displayed to the user

  Examples:
    | filename                |
    | John_Doe@2023.pdf      |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload icon
  And the user browses and selects a valid candidate profile file with a very short filename
  And the user clicks on the Upload button
  And the user waits for the upload process to complete
  Then the user should see a success confirmation message

Examples:
  | filename  |
  | A.pdf     |

@valid-upload
Scenario Outline: Upload New Candidate Profile
  When the user clicks on the upload (cloud) icon
  And the user browses and selects a valid candidate profile file with spaces in the filename
  And the user clicks on the Upload button
  Then the upload process should complete
  And a success confirmation message should be displayed to the user

Examples:
  | filename                     |
  | John Doe Profile.pdf        |
