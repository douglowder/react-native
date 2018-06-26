/**
 * Copyright (c) 2015-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @format
 * @flow
 */

'use strict';

const NativeMethodsMixin = require('NativeMethodsMixin');
const Platform = require('Platform');
const React = require('React');
const ReactNative = require('ReactNative');
const PropTypes = require('prop-types');
const StyleSheet = require('StyleSheet');
const ViewPropTypes = require('ViewPropTypes');

const createReactClass = require('create-react-class');
const requireNativeComponent = require('requireNativeComponent');

import type {ViewProps} from 'ViewPropTypes';

const tvPosterViewSupported = Platform.isTVOS && Platform.Version.substr(0,2) === '12';
const RCTTVPosterView = tvPosterViewSupported ? requireNativeComponent('RCTTVPosterView') : null;

type DefaultProps = {
  title: string,
  subtitle: string,
};

type Props = $ReadOnly<{|
  ...ViewProps,
  title: string,
  subtitle?: ?string,
  imageURL?: ?string,
|}>;

const TVPOSTERVIEW_REFERENCE = 'tvposterview';

type Event = Object;

const TVPosterView = createReactClass({
  displayName: 'TVPosterView',
  mixins: [NativeMethodsMixin],

  propTypes: {
    ...ViewPropTypes,
    /**
     * Title string
     */
    title: PropTypes.string,

    /**
     * Subtitle string
     */
    subtitle: PropTypes.string,

    /**
     * Image URL
     */
    imageURL: PropTypes.string,

  },

  getDefaultProps: function(): DefaultProps {
    return {
      title: '',
    };
  },

  render: function() {
    if (tvPosterViewSupported) {
      return (
        <RCTTVPosterView
          {...this.props}
          ref={TVPOSTERVIEW_REFERENCE}
          style={[styles.tvposterview, this.props.style]}
        />
      );
    } else {
      return (
        <View>
          <Text>
            TVPosterView is not supported on this platform.
          </Text>
        </View>
      );
    }
  },
});

const styles = StyleSheet.create({
  tvposterview: {
    height: 500,
    width: 500 
  },
});

module.exports = ((TVPosterView: any): Class<
  ReactNative.NativeComponent<Props>,
>);
