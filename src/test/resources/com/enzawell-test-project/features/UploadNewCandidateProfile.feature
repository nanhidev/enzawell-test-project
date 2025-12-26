
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
