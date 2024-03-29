/* -*- Mode: C++; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* vim: set ts=8 sts=2 et sw=2 tw=80: */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/. */

#ifndef mozilla_contentblockingnotifier_h
#define mozilla_contentblockingnotifier_h

#include "nsStringFwd.h"
#include "mozilla/Maybe.h"

#define ANTITRACKING_CONSOLE_CATEGORY "Content Blocking"_ns

class nsIChannel;
class nsPIDOMWindowInner;
class nsPIDOMWindowOuter;

namespace mozilla {
namespace dom {
class BrowsingContext;
}  // namespace dom

class ContentBlockingNotifier final {
 public:
  enum class BlockingDecision {
    eBlock,
    eAllow,
  };
  enum StorageAccessPermissionGrantedReason {
    eStorageAccessAPI,
    eOpenerAfterUserInteraction,
    eOpener,
    ePrivilegeStorageAccessForOriginAPI,
  };

  // We try to classify observed canvas fingerprinting scripts into different
  // classes, but we don't usually know the source/vendor of those scripts. The
  // classification is based on a behavioral analysis, based on type of canvas,
  // the extracted (e.g. toDataURL) size, the usage of functions like fillText
  // etc. See `nsRFPService::MaybeReportCanvasFingerprinter` for the
  // classification heuristic.
  enum CanvasFingerprinter {
    // Suspected fingerprint.com (FingerprintJS)
    eFingerprintJS,
    // Suspected Akamai fingerprinter
    eAkamai,
    // Unknown but distinct types of fingerprinters
    eVariant1,
    eVariant2,
    eVariant3,
    eVariant4,
    // This just indicates that more than one canvas was extracted and is a
    // very weak signal.
    eMaybe
  };

  // This method can be called on the parent process or on the content process.
  // The notification is propagated to the child channel if aChannel is a parent
  // channel proxy.
  //
  // aDecision can be eBlock if we have decided to block some content, or eAllow
  // if we have decided to allow the content through.
  //
  // aRejectedReason must be one of these values:
  //  * nsIWebProgressListener::STATE_COOKIES_BLOCKED_BY_PERMISSION
  //  * nsIWebProgressListener::STATE_COOKIES_BLOCKED_TRACKER
  //  * nsIWebProgressListener::STATE_COOKIES_BLOCKED_SOCIALTRACKER
  //  * nsIWebProgressListener::STATE_COOKIES_BLOCKED_ALL
  //  * nsIWebProgressListener::STATE_COOKIES_BLOCKED_FOREIGN
  static void OnDecision(nsIChannel* aChannel, BlockingDecision aDecision,
                         uint32_t aRejectedReason);

  static void OnDecision(nsPIDOMWindowInner* aWindow,
                         BlockingDecision aDecision, uint32_t aRejectedReason);

  static void OnDecision(dom::BrowsingContext* aBrowsingContext,
                         BlockingDecision aDecision, uint32_t aRejectedReason);

  static void OnEvent(nsIChannel* aChannel, uint32_t aRejectedReason,
                      bool aBlocked = true);

  static void OnEvent(
      nsIChannel* aChannel, bool aBlocked, uint32_t aRejectedReason,
      const nsACString& aTrackingOrigin,
      const ::mozilla::Maybe<StorageAccessPermissionGrantedReason>& aReason =
          Nothing(),
      const Maybe<CanvasFingerprinter>& aCanvasFingerprinter = Nothing(),
      const Maybe<bool> aCanvasFingerprinterKnownText = Nothing());

  static void ReportUnblockingToConsole(
      dom::BrowsingContext* aBrowsingContext, const nsAString& aTrackingOrigin,
      StorageAccessPermissionGrantedReason aReason);
};

}  // namespace mozilla

#endif  // mozilla_contentblockingnotifier_h
