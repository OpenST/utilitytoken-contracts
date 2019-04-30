pragma solidity ^0.5.0;

// Copyright 2019 OpenST Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// ----------------------------------------------------------------------------
//
// http://www.simpletoken.org/
//
// ----------------------------------------------------------------------------

import "../organization/contracts/OrganizationInterface.sol";

/**
 * @title Mocks an organization interface implementation.
 *
 * @notice The only valid registered owner and worker are given at
 *         construction and cannot be changed or removed.
 */
contract MockOrganization is OrganizationInterface {

    /* Storage */

    /** The address of the registered owner. */
    address owner;

    /** The address of the registered worker. */
    address worker;


    /* Constructor */

    /**
     * @notice Sets the address of the owner and the worker.
     *
     * @param _owner Address that should be used as a registered owner.
     * @param _worker Address that should be used as a registered worker.
     */
    constructor(address _owner, address _worker) public {
        owner = _owner;
        worker = _worker;
    }


    /* External functions */

    /**
     * @notice Checks if an address is currently registered as the organization.
     *
     * @param _organization Address to check.
     *
     * @return isOrganization_ True if the given address represents the
     *                         organization. Returns false otherwise.
     */
    function isOrganization(
        address _organization
    )
        external
        view
        returns (bool isOrganization_)
    {
        isOrganization_ = owner == _organization;
    }

    /**
     * @notice Checks if an address is currently registered as an active worker.
     *
     * @param _worker Address to check.
     *
     * @return isWorker_ True if the given address is a registered worker.
     */
    function isWorker(address _worker) external view returns (bool isWorker_) {
        isWorker_ = worker == _worker;
    }
}
