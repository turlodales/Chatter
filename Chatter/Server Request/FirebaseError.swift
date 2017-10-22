//
//  FirebaseError.swift
//  Chatter
//
//  Created by Satish Babariya on 10/22/17.
//  Copyright © 2017 Satish Babariya. All rights reserved.
//

import UIKit
import SwiftMessages

enum FirebaseErrorCodes: Int{
    /** Indicates a validation error with the custom token.
     */
    case FIRAuthErrorCodeInvalidCustomToken = 17000
    
    /** Indicates the service account and the API key belong to different projects.
     */
    case FIRAuthErrorCodeCustomTokenMismatch = 17002
    
    /** Indicates the IDP token or requestUri is invalid.
     */
    case FIRAuthErrorCodeInvalidCredential = 17004
    
    /** Indicates the user's account is disabled on the server.
     */
    case FIRAuthErrorCodeUserDisabled = 17005
    
    /** Indicates the administrator disabled sign in with the specified identity provider.
     */
    case FIRAuthErrorCodeOperationNotAllowed = 17006
    
    /** Indicates the email used to attempt a sign up is already in use.
     */
    case FIRAuthErrorCodeEmailAlreadyInUse = 17007
    
    /** Indicates the email is invalid.
     */
    case FIRAuthErrorCodeInvalidEmail = 17008
    
    /** Indicates the user attempted sign in with a wrong password.
     */
    case FIRAuthErrorCodeWrongPassword = 17009
    
    /** Indicates that too many requests were made to a server method.
     */
    case FIRAuthErrorCodeTooManyRequests = 17010
    
    /** Indicates the user account was not found.
     */
    case FIRAuthErrorCodeUserNotFound = 17011
    
    /** Indicates account linking is required.
     */
    case FIRAuthErrorCodeAccountExistsWithDifferentCredential = 17012
    
    /** Indicates the user has attemped to change email or password more than 5 minutes after
     signing in.
     */
    case FIRAuthErrorCodeRequiresRecentLogin = 17014
    
    /** Indicates an attempt to link a provider to which the account is already linked.
     */
    case FIRAuthErrorCodeProviderAlreadyLinked = 17015
    
    /** Indicates an attempt to unlink a provider that is not linked.
     */
    case FIRAuthErrorCodeNoSuchProvider = 17016
    
    /** Indicates user's saved auth credential is invalid the user needs to sign in again.
     */
    case FIRAuthErrorCodeInvalidUserToken = 17017
    
    /** Indicates a network error occurred (such as a timeout interrupted connection or
     unreachable host). These types of errors are often recoverable with a retry. The
     @c NSUnderlyingError field in the @c NSError.userInfo dictionary will contain the error
     encountered.
     */
    case FIRAuthErrorCodeNetworkError = 17020
    
    /** Indicates the saved token has expired for example the user may have changed account
     password on another device. The user needs to sign in again on the device that made this
     request.
     */
    case FIRAuthErrorCodeUserTokenExpired = 17021
    
    /** Indicates an invalid API key was supplied in the request.
     */
    case FIRAuthErrorCodeInvalidAPIKey = 17023
    
    /** Indicates that an attempt was made to reauthenticate with a user which is not the current
     user.
     */
    case FIRAuthErrorCodeUserMismatch = 17024
    
    /** Indicates an attempt to link with a credential that has already been linked with a
     different Firebase account
     */
    case FIRAuthErrorCodeCredentialAlreadyInUse = 17025
    
    /** Indicates an attempt to set a password that is considered too weak.
     */
    case FIRAuthErrorCodeWeakPassword = 17026
    
    /** Indicates the App is not authorized to use Firebase Authentication with the
     provided API Key.
     */
    case FIRAuthErrorCodeAppNotAuthorized = 17028
    
    /** Indicates the OOB code is expired.
     */
    case FIRAuthErrorCodeExpiredActionCode = 17029
    
    /** Indicates the OOB code is invalid.
     */
    case FIRAuthErrorCodeInvalidActionCode = 17030
    
    /** Indicates that there are invalid parameters in the payload during a "send password reset
     *  email" attempt.
     */
    case FIRAuthErrorCodeInvalidMessagePayload = 17031
    
    /** Indicates that the sender email is invalid during a "send password reset email" attempt.
     */
    case FIRAuthErrorCodeInvalidSender = 17032
    
    /** Indicates that the recipient email is invalid.
     */
    case FIRAuthErrorCodeInvalidRecipientEmail = 17033
    
    /** Indicates that an email address was expected but one was not provided.
     */
    case FIRAuthErrorCodeMissingEmail = 17034
    
    // The enum values 17035 is reserved and should NOT be used for new error codes.
    
    /** Indicates that the iOS bundle ID is missing when a iOS App Store ID is provided.
     */
    case FIRAuthErrorCodeMissingIosBundleID = 17036
    
    /** Indicates that the android package name is missing when the @c androidInstallApp flag is set
     to true.
     */
    case FIRAuthErrorCodeMissingAndroidPackageName = 17037
    
    /** Indicates that the domain specified in the continue URL is not whitelisted in the Firebase
     console.
     */
    case FIRAuthErrorCodeUnauthorizedDomain = 17038
    
    /** Indicates that the domain specified in the continue URI is not valid.
     */
    case FIRAuthErrorCodeInvalidContinueURI = 17039
    
    /** Indicates that a continue URI was not provided in a request to the backend which requires
     one.
     */
    case FIRAuthErrorCodeMissingContinueURI = 17040
    
    /** Indicates that a phone number was not provided in a call to
     @c verifyPhoneNumber:completion:.
     */
    case FIRAuthErrorCodeMissingPhoneNumber = 17041
    
    /** Indicates that an invalid phone number was provided in a call to
     @c verifyPhoneNumber:completion:.
     */
    case FIRAuthErrorCodeInvalidPhoneNumber = 17042
    
    /** Indicates that the phone auth credential was created with an empty verification code.
     */
    case FIRAuthErrorCodeMissingVerificationCode = 17043
    
    /** Indicates that an invalid verification code was used in the verifyPhoneNumber request.
     */
    case FIRAuthErrorCodeInvalidVerificationCode = 17044
    
    /** Indicates that the phone auth credential was created with an empty verification ID.
     */
    case FIRAuthErrorCodeMissingVerificationID = 17045
    
    /** Indicates that an invalid verification ID was used in the verifyPhoneNumber request.
     */
    case FIRAuthErrorCodeInvalidVerificationID = 17046
    
    /** Indicates that the APNS device token is missing in the verifyClient request.
     */
    case FIRAuthErrorCodeMissingAppCredential = 17047
    
    /** Indicates that an invalid APNS device token was used in the verifyClient request.
     */
    case FIRAuthErrorCodeInvalidAppCredential = 17048
    
    // The enum values between 17048 and 17051 are reserved and should NOT be used for new error
    // codes.
    
    /** Indicates that the SMS code has expired.
     */
    case FIRAuthErrorCodeSessionExpired = 17051
    
    /** Indicates that the quota of SMS messages for a given project has been exceeded.
     */
    case FIRAuthErrorCodeQuotaExceeded = 17052
    
    /** Indicates that the APNs device token could not be obtained. The app may not have set up
     remote notification correctly or may fail to forward the APNs device token to FIRAuth
     if app delegate swizzling is disabled.
     */
    case FIRAuthErrorCodeMissingAppToken = 17053
    
    /** Indicates that the app fails to forward remote notification to FIRAuth.
     */
    case FIRAuthErrorCodeNotificationNotForwarded = 17054
    
    /** Indicates that the app could not be verified by Firebase during phone number authentication.
     */
    case FIRAuthErrorCodeAppNotVerified = 17055
    
    /** Indicates that the reCAPTCHA token is not valid.
     */
    case FIRAuthErrorCodeCaptchaCheckFailed = 17056
    
    /** Indicates that an attempt was made to present a new web context while one was already being
     presented.
     */
    case FIRAuthErrorCodeWebContextAlreadyPresented = 17057
    
    /** Indicates that the URL presentation was cancelled prematurely by the user.
     */
    case FIRAuthErrorCodeWebContextCancelled = 17058
    
    /** Indicates a general failure during the app verification flow.
     */
    case FIRAuthErrorCodeAppVerificationUserInteractionFailure = 17059
    
    /** Indicates that the clientID used to invoke a web flow is invalid.
     */
    case FIRAuthErrorCodeInvalidClientID = 17060
    
    /** Indicates that a network request within a SFSafariViewController or UIWebview failed.
     */
    case FIRAuthErrorCodeWebNetworkRequestFailed = 17061
    
    /** Indicates that an internal error occured within a SFSafariViewController or UIWebview.
     */
    case FIRAuthErrorCodeWebInternalError = 17062
    
    /** Indicates an error occurred while attempting to access the keychain.
     */
    case FIRAuthErrorCodeKeychainError = 17995
    
    /** Indicates an internal error occurred.
     */
    case FIRAuthErrorCodeInternalError = 17999
}

enum FirebaseErrorMessages: String {
    
    
    // MARK: - Firebase Auth Errors -
    
    // - Common Error -
    
    //Indicates a network error occurred during the operation.
    case FIRAuthErrorCodeNetworkError = "Please try again."
    
    //Indicates the user account was not found. This could happen if the user account has been deleted.
    case FIRAuthErrorCodeUserNotFound = "User account does not exists, please sign up first."
    
    //Indicates the current user’s token has expired, for example, the user may have changed account password on another device. You must prompt the user to sign in again on this device.
    case FIRAuthErrorCodeUserTokenExpired = "Please Signin again."
    
    //Indicates that the request has been blocked after an abnormal number of requests have been made from the caller device to the Firebase Authentication servers. Retry again after some time.
    case FIRAuthErrorCodeTooManyRequests = "You have been blocked for some time due to too many requests, Please Retry again after some time."
    
    //Indicates the application has been configured with an invalid API key.
    case FIRAuthErrorCodeInvalidAPIKey = "Error, Please contact Administrator"
    
    //Indicates the App is not authorized to use Firebase Authentication with the provided API Key. go to the Google API Console and check under the credentials tab that the API key you are using has your application’s bundle ID whitelisted.
    case FIRAuthErrorCodeAppNotAuthorized = "Authorization Error, Please contact Administrator"
    
    //Indicates an error occurred when accessing the keychain. The NSLocalizedFailureReasonErrorKey and NSUnderlyingErrorKey fields in the NSError.userInfo dictionary will contain more information about the error encountered.
    case FIRAuthErrorCodeKeychainError = "Internal Error"
    
    //Indicates an internal error occurred. Please report the error with the entire NSError object.
    case FIRAuthErrorCodeInternalError = "Internal Error."
    
    
    // - Specific Errors -
    
    //Indicates the email address is malformed.
    case FIRAuthErrorCodeInvalidEmail = "Invalid Email Address."
    
    //Indicates that email and password accounts are not enabled. Enable them in the Auth section of the Firebase console.
    case FIRAuthErrorCodeOperationNotAllowed = "You are not Authorized, Please contact administrator"
    
    //Indicates the user's account is disabled.
    case FIRAuthErrorCodeUserDisabled = "Your account has been disabled"
    
    //Indicates the user attempted sign in with a wrong password.
    case FIRAuthErrorCodeWrongPassword = "Wrong password, Please try again"
    
    // - signInWithCredential -
    
    //Indicates the supplied credential is invalid. This could happen if it has expired or it is malformed.
    case FIRAuthErrorCodeInvalidCredential = "Invalid Credentials"
    
    //Indicates the email asserted by the credential (e.g. the email in a Facebook access token) is already in use by an existing account, that cannot be authenticated with this sign-in method. Call fetchProvidersForEmail for this user’s email and then prompt them to sign in with any of the sign-in providers returned. This error will only be thrown if the "One account per email address" setting is enabled in the Firebase console, under Authentication settings.
    case FIRAuthErrorCodeEmailAlreadyInUse = "Email is already in use, Please try with another email address."
    
    //Indicates a validation error with the custom token.
    case FIRAuthErrorCodeInvalidCustomToken = "Validation error, Please contact administrator."
    
    //Indicates the service account and the API key belong to different projects.
    case FIRAuthErrorCodeCustomTokenMismatch = "Service Account error, Please contact administrator."
    
    //Indicates an attempt to set a password that is considered too weak. The NSLocalizedFailureReasonErrorKey field in the NSError.userInfo dictionary object will contain more detailed explanation that can be shown to the user.
    case FIRAuthErrorCodeWeakPassword = "Password is too weak"
    
    //Indicates that the signed-in user's refresh token, that holds session information, is invalid. You must prompt the user to sign in again on this device.
    case FIRAuthErrorCodeInvalidUserToken = "Your session has been expired, please signin again"
    
    //Indicates that an attempt was made to reauthenticate with a user which is not the current user.
    case FIRAuthErrorCodeUserMismatch = "User is Mismatchd."
    
    //Updating a user’s email is a security sensitive operation that requires a recent login from the user. This error indicates the user has not signed in recently enough. To resolve, reauthenticate the user by invoking reauthenticateWithCredential:completion: on FIRUser.
    case FIRAuthErrorCodeRequiresRecentLogin = "Please signin again for further operations."
    
    
    //Indicates an attempt to link a provider of a type already linked to this account.
    case FIRAuthErrorCodeProviderAlreadyLinked = "This provider has already linked to this account."
    
    //Indicates an attempt to link with a credential that has already been linked with a different Firebase account.
    case FIRAuthErrorCodeCredentialAlreadyInUse = "This provider has already linked to another account."
    
    //Indicates an attempt to unlink a provider that is not linked to the account.
    case FIRAuthErrorCodeNoSuchProvider = "Can't unlink a provider that is not linked to this account"
    
    
    
    

}

class FirebaseError: NSObject {
    
    // MARK: - Attributes -
    
    
    // MARK: - Lifecycle -
    
    deinit{
        
    }
    
    // MARK: - Public Interface -
    
    func showErrorMessage(Error error: NSError) {
        if let errorName = error.userInfo["error_name"] as? String {
            
            //switch FirebaseErrorMessages
        
        }
    }
    
    func translateErrors(error: NSError)-> String {
        var translatedMessage = ""
        
        if let errorName = error.userInfo["error_name"] as? String {
            
            switch errorName {
            case "ERROR_WEAK_PASSWORD":
                translatedMessage = "The password must be 6 characters long or more."
            case "ERROR_EMAIL_ALREADY_IN_USE":
                translatedMessage = "The email address is already in use by another account."
            case "ERROR_USER_NOT_FOUND":
                translatedMessage = "There is no user record corresponding to this identifier. The user may have been deleted."
            case "ERROR_INVALID_EMAIL":
                translatedMessage = "The email address is badly formatted."
            default:
                translatedMessage = error.localizedDescription
            }
        }
        
        return translatedMessage
    }
    
    
    // MARK: - Internal Helpers -
    
}
