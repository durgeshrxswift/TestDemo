
import Foundation

struct UserViewModel
{
    func getUsers(completion: @escaping(_ result: [UserResponse]?)-> Void)
    {

        let httpUtility = HttpUtility()
        let employeeEndpoint = ApiClass.userList

        let requestUrl = URL(string:employeeEndpoint)!

        httpUtility.getApiData(requestUrl: requestUrl, resultType: [UserResponse].self) { (userApiResponse) in
            _ = completion(userApiResponse)
        }
    }
    

}
