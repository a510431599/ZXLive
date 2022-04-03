/*
 * RED5 Open Source Media Server - https://github.com/Red5/ Copyright 2006-2016 by respective authors (see below). All rights reserved. Licensed under the Apache License, Version
 * 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 Unless
 * required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing permissions and limitations under the License.
 */

package zx.zxlive.core.server.service;

import zx.zxlive.core.server.api.scope.IScope;
import org.springframework.stereotype.Component;

/**
 * Resolve services that have been configured in the context of a scope.
 * 
 * @author The zSharpe Project
 * @author Vic Wang (xiaoyu860912@163.com)
 */
@Component
public class ContextServiceResolver implements IServiceResolver {

    /** {@inheritDoc} */
    public Object resolveService(IScope scope, String serviceName) {
        Object service;
        try {
            service = scope.getContext().lookupService(serviceName);
        } catch (ServiceNotFoundException err) {
            return null;
        }
        if (service != null) {
            return service;
        }

        return null;
    }

}