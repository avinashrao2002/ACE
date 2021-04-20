/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
import React, { useState } from 'react';
import { useDispatch } from 'react-redux';
import { setFilterConfiguration } from 'src/dashboard/actions/nativeFilters';
import Button from 'src/components/Button';
import { styled } from '@superset-ui/core';
import { FilterConfiguration } from 'src/dashboard/components/nativeFilters/types';
import { FiltersConfigModal } from 'src/dashboard/components/nativeFilters/FiltersConfigModal/FiltersConfigModal';
import { getFilterBarTestId } from '..';

export interface FCBProps {
  createNewOnOpen?: boolean;
}

const HeaderButton = styled(Button)`
  padding: 0;
`;

export const FilterConfigurationLink: React.FC<FCBProps> = ({
  createNewOnOpen,
  children,
}) => {
  const dispatch = useDispatch();
  const [isOpen, setOpen] = useState(false);

  function close() {
    setOpen(false);
  }

  async function submit(filterConfig: FilterConfiguration) {
    dispatch(await setFilterConfiguration(filterConfig));
    close();
  }

  return (
    <>
      <HeaderButton
        {...getFilterBarTestId('create-filter')}
        buttonStyle="link"
        buttonSize="xsmall"
        onClick={() => setOpen(true)}
      >
        {children}
      </HeaderButton>
      <FiltersConfigModal
        isOpen={isOpen}
        onSave={submit}
        onCancel={close}
        createNewOnOpen={createNewOnOpen}
      />
    </>
  );
};

export default FilterConfigurationLink;